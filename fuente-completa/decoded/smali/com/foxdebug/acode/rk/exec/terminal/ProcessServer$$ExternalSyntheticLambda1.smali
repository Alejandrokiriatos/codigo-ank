.class public final synthetic Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;


# direct methods
.method public synthetic constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda1;->f$0:Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer$$ExternalSyntheticLambda1;->f$0:Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;

    invoke-virtual {v0}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->lambda$onClose$1$com-foxdebug-acode-rk-exec-terminal-ProcessServer()V

    return-void
.end method
