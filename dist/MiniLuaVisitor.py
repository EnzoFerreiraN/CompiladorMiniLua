# Generated from MiniLua.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .MiniLuaParser import MiniLuaParser
else:
    from MiniLuaParser import MiniLuaParser

# This class defines a complete generic visitor for a parse tree produced by MiniLuaParser.

class MiniLuaVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by MiniLuaParser#program.
    def visitProgram(self, ctx:MiniLuaParser.ProgramContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#main_function.
    def visitMain_function(self, ctx:MiniLuaParser.Main_functionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#function_decl.
    def visitFunction_decl(self, ctx:MiniLuaParser.Function_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#return_type.
    def visitReturn_type(self, ctx:MiniLuaParser.Return_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#param_list.
    def visitParam_list(self, ctx:MiniLuaParser.Param_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#param.
    def visitParam(self, ctx:MiniLuaParser.ParamContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#type.
    def visitType(self, ctx:MiniLuaParser.TypeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#block.
    def visitBlock(self, ctx:MiniLuaParser.BlockContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#statement.
    def visitStatement(self, ctx:MiniLuaParser.StatementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#var_decl.
    def visitVar_decl(self, ctx:MiniLuaParser.Var_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#const_decl.
    def visitConst_decl(self, ctx:MiniLuaParser.Const_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#command.
    def visitCommand(self, ctx:MiniLuaParser.CommandContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#assignment.
    def visitAssignment(self, ctx:MiniLuaParser.AssignmentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#function_call_stmt.
    def visitFunction_call_stmt(self, ctx:MiniLuaParser.Function_call_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#if_stmt.
    def visitIf_stmt(self, ctx:MiniLuaParser.If_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#while_stmt.
    def visitWhile_stmt(self, ctx:MiniLuaParser.While_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#do_stmt.
    def visitDo_stmt(self, ctx:MiniLuaParser.Do_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#for_stmt.
    def visitFor_stmt(self, ctx:MiniLuaParser.For_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#return_stmt.
    def visitReturn_stmt(self, ctx:MiniLuaParser.Return_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#AndExp.
    def visitAndExp(self, ctx:MiniLuaParser.AndExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#AdditiveExp.
    def visitAdditiveExp(self, ctx:MiniLuaParser.AdditiveExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#OrExp.
    def visitOrExp(self, ctx:MiniLuaParser.OrExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#AtomExp.
    def visitAtomExp(self, ctx:MiniLuaParser.AtomExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#UnaryExp.
    def visitUnaryExp(self, ctx:MiniLuaParser.UnaryExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#RelationalExp.
    def visitRelationalExp(self, ctx:MiniLuaParser.RelationalExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#ConcatExp.
    def visitConcatExp(self, ctx:MiniLuaParser.ConcatExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#PowerExp.
    def visitPowerExp(self, ctx:MiniLuaParser.PowerExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#MultiplicativeExp.
    def visitMultiplicativeExp(self, ctx:MiniLuaParser.MultiplicativeExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#atom.
    def visitAtom(self, ctx:MiniLuaParser.AtomContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#function_call.
    def visitFunction_call(self, ctx:MiniLuaParser.Function_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#arg_list.
    def visitArg_list(self, ctx:MiniLuaParser.Arg_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MiniLuaParser#literal.
    def visitLiteral(self, ctx:MiniLuaParser.LiteralContext):
        return self.visitChildren(ctx)



del MiniLuaParser