.class public final synthetic Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

.field public final synthetic f$1:Ljava/lang/Process;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/Process;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Process;

    iput-object p3, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;->f$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Process;

    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->lambda$startProcess$1$com-foxdebug-acode-rk-exec-terminal-TerminalService(Ljava/lang/Process;Ljava/lang/String;)V

    return-void
.end method
