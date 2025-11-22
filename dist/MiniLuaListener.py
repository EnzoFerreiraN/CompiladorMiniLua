# Generated from MiniLua.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .MiniLuaParser import MiniLuaParser
else:
    from MiniLuaParser import MiniLuaParser

# This class defines a complete listener for a parse tree produced by MiniLuaParser.
class MiniLuaListener(ParseTreeListener):

    # Enter a parse tree produced by MiniLuaParser#program.
    def enterProgram(self, ctx:MiniLuaParser.ProgramContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#program.
    def exitProgram(self, ctx:MiniLuaParser.ProgramContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#main_function.
    def enterMain_function(self, ctx:MiniLuaParser.Main_functionContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#main_function.
    def exitMain_function(self, ctx:MiniLuaParser.Main_functionContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#function_decl.
    def enterFunction_decl(self, ctx:MiniLuaParser.Function_declContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#function_decl.
    def exitFunction_decl(self, ctx:MiniLuaParser.Function_declContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#return_type.
    def enterReturn_type(self, ctx:MiniLuaParser.Return_typeContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#return_type.
    def exitReturn_type(self, ctx:MiniLuaParser.Return_typeContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#param_list.
    def enterParam_list(self, ctx:MiniLuaParser.Param_listContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#param_list.
    def exitParam_list(self, ctx:MiniLuaParser.Param_listContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#param.
    def enterParam(self, ctx:MiniLuaParser.ParamContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#param.
    def exitParam(self, ctx:MiniLuaParser.ParamContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#type.
    def enterType(self, ctx:MiniLuaParser.TypeContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#type.
    def exitType(self, ctx:MiniLuaParser.TypeContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#block.
    def enterBlock(self, ctx:MiniLuaParser.BlockContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#block.
    def exitBlock(self, ctx:MiniLuaParser.BlockContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#statement.
    def enterStatement(self, ctx:MiniLuaParser.StatementContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#statement.
    def exitStatement(self, ctx:MiniLuaParser.StatementContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#var_decl.
    def enterVar_decl(self, ctx:MiniLuaParser.Var_declContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#var_decl.
    def exitVar_decl(self, ctx:MiniLuaParser.Var_declContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#const_decl.
    def enterConst_decl(self, ctx:MiniLuaParser.Const_declContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#const_decl.
    def exitConst_decl(self, ctx:MiniLuaParser.Const_declContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#command.
    def enterCommand(self, ctx:MiniLuaParser.CommandContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#command.
    def exitCommand(self, ctx:MiniLuaParser.CommandContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#assignment.
    def enterAssignment(self, ctx:MiniLuaParser.AssignmentContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#assignment.
    def exitAssignment(self, ctx:MiniLuaParser.AssignmentContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#function_call_stmt.
    def enterFunction_call_stmt(self, ctx:MiniLuaParser.Function_call_stmtContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#function_call_stmt.
    def exitFunction_call_stmt(self, ctx:MiniLuaParser.Function_call_stmtContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#if_stmt.
    def enterIf_stmt(self, ctx:MiniLuaParser.If_stmtContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#if_stmt.
    def exitIf_stmt(self, ctx:MiniLuaParser.If_stmtContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#while_stmt.
    def enterWhile_stmt(self, ctx:MiniLuaParser.While_stmtContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#while_stmt.
    def exitWhile_stmt(self, ctx:MiniLuaParser.While_stmtContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#do_stmt.
    def enterDo_stmt(self, ctx:MiniLuaParser.Do_stmtContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#do_stmt.
    def exitDo_stmt(self, ctx:MiniLuaParser.Do_stmtContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#for_stmt.
    def enterFor_stmt(self, ctx:MiniLuaParser.For_stmtContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#for_stmt.
    def exitFor_stmt(self, ctx:MiniLuaParser.For_stmtContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#return_stmt.
    def enterReturn_stmt(self, ctx:MiniLuaParser.Return_stmtContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#return_stmt.
    def exitReturn_stmt(self, ctx:MiniLuaParser.Return_stmtContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#AndExp.
    def enterAndExp(self, ctx:MiniLuaParser.AndExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#AndExp.
    def exitAndExp(self, ctx:MiniLuaParser.AndExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#AdditiveExp.
    def enterAdditiveExp(self, ctx:MiniLuaParser.AdditiveExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#AdditiveExp.
    def exitAdditiveExp(self, ctx:MiniLuaParser.AdditiveExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#OrExp.
    def enterOrExp(self, ctx:MiniLuaParser.OrExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#OrExp.
    def exitOrExp(self, ctx:MiniLuaParser.OrExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#AtomExp.
    def enterAtomExp(self, ctx:MiniLuaParser.AtomExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#AtomExp.
    def exitAtomExp(self, ctx:MiniLuaParser.AtomExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#UnaryExp.
    def enterUnaryExp(self, ctx:MiniLuaParser.UnaryExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#UnaryExp.
    def exitUnaryExp(self, ctx:MiniLuaParser.UnaryExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#RelationalExp.
    def enterRelationalExp(self, ctx:MiniLuaParser.RelationalExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#RelationalExp.
    def exitRelationalExp(self, ctx:MiniLuaParser.RelationalExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#ConcatExp.
    def enterConcatExp(self, ctx:MiniLuaParser.ConcatExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#ConcatExp.
    def exitConcatExp(self, ctx:MiniLuaParser.ConcatExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#PowerExp.
    def enterPowerExp(self, ctx:MiniLuaParser.PowerExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#PowerExp.
    def exitPowerExp(self, ctx:MiniLuaParser.PowerExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#MultiplicativeExp.
    def enterMultiplicativeExp(self, ctx:MiniLuaParser.MultiplicativeExpContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#MultiplicativeExp.
    def exitMultiplicativeExp(self, ctx:MiniLuaParser.MultiplicativeExpContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#atom.
    def enterAtom(self, ctx:MiniLuaParser.AtomContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#atom.
    def exitAtom(self, ctx:MiniLuaParser.AtomContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#function_call.
    def enterFunction_call(self, ctx:MiniLuaParser.Function_callContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#function_call.
    def exitFunction_call(self, ctx:MiniLuaParser.Function_callContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#arg_list.
    def enterArg_list(self, ctx:MiniLuaParser.Arg_listContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#arg_list.
    def exitArg_list(self, ctx:MiniLuaParser.Arg_listContext):
        pass


    # Enter a parse tree produced by MiniLuaParser#literal.
    def enterLiteral(self, ctx:MiniLuaParser.LiteralContext):
        pass

    # Exit a parse tree produced by MiniLuaParser#literal.
    def exitLiteral(self, ctx:MiniLuaParser.LiteralContext):
        pass



del MiniLuaParser