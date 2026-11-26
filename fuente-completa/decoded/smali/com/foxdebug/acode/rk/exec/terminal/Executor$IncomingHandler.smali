.class Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;
.super Landroid/os/Handler;
.source "Executor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/acode/rk/exec/terminal/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;


# direct methods
.method private constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Lcom/foxdebug/acode/rk/exec/terminal/Executor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 185
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 186
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string v3, "exec_result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 191
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {v1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$mgetCallbackContext(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 193
    const-string v3, "isSuccess"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 198
    :goto_0
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$mcleanupCallback(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$mgetCallbackContext(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 205
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v4, v6

    goto :goto_2

    :sswitch_0
    const-string v3, "isRunning"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "exit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_2
    const-string v3, "stdout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "stderr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    :sswitch_4
    const-string v3, "listProcesses"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 217
    :pswitch_0
    invoke-virtual {p1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$mcleanupCallback(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)V

    return-void

    .line 213
    :pswitch_1
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {v1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$mcleanupCallback(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exit:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 208
    :pswitch_2
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, v5}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 210
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    .line 222
    :pswitch_3
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid process list: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 226
    :goto_3
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;->this$0:Lcom/foxdebug/acode/rk/exec/terminal/Executor;

    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->-$$Nest$mcleanupCallback(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ea773a1 -> :sswitch_4
        -0x35310b9e -> :sswitch_3
        -0x3530e5b5 -> :sswitch_2
        0x2fb91e -> :sswitch_1
        0x39e05d35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
