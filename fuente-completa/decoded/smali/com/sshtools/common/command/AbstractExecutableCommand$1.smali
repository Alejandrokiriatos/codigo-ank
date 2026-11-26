.class Lcom/sshtools/common/command/AbstractExecutableCommand$1;
.super Ljava/lang/Object;
.source "AbstractExecutableCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/command/AbstractExecutableCommand;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/command/AbstractExecutableCommand;


# direct methods
.method constructor <init>(Lcom/sshtools/common/command/AbstractExecutableCommand;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/sshtools/common/command/AbstractExecutableCommand$1;->this$0:Lcom/sshtools/common/command/AbstractExecutableCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/command/AbstractExecutableCommand$1;->this$0:Lcom/sshtools/common/command/AbstractExecutableCommand;

    invoke-virtual {v0}, Lcom/sshtools/common/command/AbstractExecutableCommand;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Consumed error from executable command"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
