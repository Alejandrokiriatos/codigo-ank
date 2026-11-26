.class Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;
.super Ljava/lang/Object;
.source "Executor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/acode/rk/exec/terminal/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;


# direct methods
.method constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 163
    const-string p1, "Executor"

    const-string v0, "Service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputserviceMessenger(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Landroid/os/Messenger;)V

    .line 165
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputisServiceBound(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Z)V

    .line 166
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputisServiceBinding(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Z)V

    .line 167
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fgetserviceConnectedLatch(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fgetserviceConnectedLatch(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 174
    const-string p1, "Executor"

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputserviceMessenger(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Landroid/os/Messenger;)V

    .line 176
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputisServiceBound(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Z)V

    .line 177
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputisServiceBinding(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Z)V

    .line 178
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$fputserviceConnectedLatch(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
