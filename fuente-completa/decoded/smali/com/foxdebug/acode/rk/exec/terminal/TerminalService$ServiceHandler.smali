.class Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;
.super Landroid/os/Handler;
.source "TerminalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;


# direct methods
.method private constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Lcom/foxdebug/acode/rk/exec/terminal/TerminalService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 99
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 103
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v3, "true"

    const-string v4, "alpine"

    const-string v5, "cmd"

    packed-switch p1, :pswitch_data_0

    return-void

    .line 127
    :pswitch_0
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-static {p1, v1, v2}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$mlistProcesses(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/String;Landroid/os/Messenger;)V

    return-void

    .line 121
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-static {v4}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$fgetclientMessengers(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v2, v1, p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$mexec(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 118
    :pswitch_2
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-static {p1, v1, v2}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$misProcessRunning(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/String;Landroid/os/Messenger;)V

    return-void

    .line 115
    :pswitch_3
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-static {p1, v1}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$mstopProcess(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/String;)V

    return-void

    .line 111
    :pswitch_4
    const-string p1, "input"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-static {v0, v1, p1}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$mwriteToProcess(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :pswitch_5
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-static {v4}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$fgetclientMessengers(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService$ServiceHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v2, v1, p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;->-$$Nest$mstartProcess(Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
