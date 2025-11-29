import os
import subprocess
import sys

test_dirs = [
    os.path.join("tests", "correct"),
    os.path.join("tests", "complex")
]

compiler = "main.py"
python_exe = sys.executable

passed = []
failed = []

def run_test(filepath):
    print(f"Testing {filepath}...", end=" ")
    # Compile
    try:
        compile_cmd = [python_exe, compiler, filepath]
        # Capture output to keep console clean, unless error
        subprocess.run(compile_cmd, check=True, capture_output=True)
    except subprocess.CalledProcessError as e:
        print(f"\n  [COMPILE FAIL] {filepath}")
        print(e.stderr.decode('utf-8', errors='ignore'))
        print(e.stdout.decode('utf-8', errors='ignore'))
        return False

    # Run
    base_name = os.path.splitext(os.path.basename(filepath))[0]
    exe_path = os.path.join("codigos_gerados", "exe", base_name + ".exe")
    
    if not os.path.exists(exe_path):
        print(f"\n  [EXE NOT FOUND] {exe_path}")
        return False

    try:
        # Prepare input for tests that might need it (like input_test.lua)
        # Sending "10" and "TestString" to cover number and string inputs
        input_str = "10\nTestString\n" 
        
        # Run executable
        result = subprocess.run([exe_path], input=input_str.encode(), capture_output=True, timeout=5)
        
        if result.returncode != 0:
            print(f"\n  [RUNTIME FAIL] {filepath} (Exit code {result.returncode})")
            print(result.stderr.decode('utf-8', errors='ignore'))
            return False
        else:
            print("[PASS]")
            return True
    except subprocess.TimeoutExpired:
        print(f"\n  [TIMEOUT] {filepath}")
        return False
    except Exception as e:
        print(f"\n  [EXEC FAIL] {e}")
        return False

print("Iniciando bateria de testes...")
for d in test_dirs:
    if not os.path.exists(d):
        print(f"Diretório não encontrado: {d}")
        continue
        
    print(f"\n--- Executando testes em {d} ---")
    files = sorted([f for f in os.listdir(d) if f.endswith(".lua")])
    
    for f in files:
        full_path = os.path.join(d, f)
        if run_test(full_path):
            passed.append(full_path)
        else:
            failed.append(full_path)

print("\n" + "="*30)
print(f"Resumo dos Testes")
print(f"Total: {len(passed) + len(failed)}")
print(f"Sucesso: {len(passed)}")
print(f"Falhas: {len(failed)}")
if failed:
    print("\nTestes que falharam:")
    for f in failed:
        print(f" - {f}")
print("="*30)
