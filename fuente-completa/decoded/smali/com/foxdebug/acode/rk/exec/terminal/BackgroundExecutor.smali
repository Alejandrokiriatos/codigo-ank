.class public Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;
.super Lorg/apache/cordova/CordovaPlugin;
.source "BackgroundExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;
    }
.end annotation


# instance fields
.field private final processCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ">;"
        }
    .end annotation
.end field

.field private final processDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final processInputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private processManager:Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;

.field private final processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Process;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processes:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processInputs:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processCallbacks:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processDetails:Ljava/util/Map;

    return-void
.end method

.method private cleanup(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processInputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processDetails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private exec(Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isProcessRunning(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Process;

    if-eqz v0, :cond_2

    .line 145
    invoke-static {v0}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->isAlive(Ljava/lang/Process;)Z

    move-result v0

    const-string v1, "exited"

    if-eqz v0, :cond_0

    const-string v0, "running"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 146
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->cleanup(Ljava/lang/String;)V

    .line 147
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_2
    const-string p1, "not_found"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void
.end method

.method private killProcess(ILorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 220
    :try_start_0
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->killProcess(I)V

    .line 221
    const-string p1, "Process terminated"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to kill process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private listAllProcesses(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 212
    :try_start_0
    invoke-static {}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->getAllProcesses()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list all processes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private listProcesses(Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Process;

    .line 159
    invoke-static {v2}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->isAlive(Ljava/lang/Process;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processDetails:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;

    if-nez v2, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 166
    const-string v5, "id"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v3, "command"

    iget-object v5, v2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->command:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v3, "alpine"

    iget-boolean v5, v2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->alpine:Z

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 169
    const-string v3, "startedAt"

    iget-wide v5, v2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->startedAt:J

    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 170
    const-string v3, "pid"

    iget-wide v5, v2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;->pid:J

    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return-void
.end method

.method private loadLibrary(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 181
    const-string p1, "This feature is no longer supported. Loading native libraries directly from JavaScript is no longer allowed due to security reasons."

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private sendPluginMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/cordova/CallbackContext;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, p1, p2, v0}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->sendPluginResult(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private sendPluginResult(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Z)V
    .locals 2

    .line 191
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 193
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private startProcess(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda5;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/String;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopProcess(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->killProcessTree(Ljava/lang/Process;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->cleanup(Ljava/lang/String;)V

    .line 135
    const-string p1, "Process terminated"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    const-string p1, "No such process"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private writeToProcess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processInputs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    .line 120
    invoke-static {p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/StreamHandler;->writeToStream(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 121
    const-string p1, "Written to process"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    const-string p1, "Process not found or closed"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Write error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "isRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "killProcess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "write"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "exec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "loadLibrary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "setProotDebug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "listAllProcesses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_0

    :sswitch_9
    const-string v0, "listProcesses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v3, v1

    .line 60
    :goto_0
    const-string v0, "true"

    packed-switch v3, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown action: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 41
    :pswitch_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->isProcessRunning(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v2

    .line 50
    :pswitch_1
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->killProcess(ILorg/apache/cordova/CallbackContext;)V

    return v2

    .line 32
    :pswitch_2
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->writeToProcess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v2

    .line 28
    :pswitch_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->startProcess(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V

    return v2

    .line 35
    :pswitch_4
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->stopProcess(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v2

    .line 38
    :pswitch_5
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->exec(Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V

    return v2

    .line 53
    :pswitch_6
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->loadLibrary(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v2

    .line 56
    :pswitch_7
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    sput-boolean p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;->prootDebug:Z

    .line 57
    sget-boolean p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;->prootDebug:Z

    if-eqz p1, :cond_a

    const-string p1, "enabled"

    goto :goto_1

    :cond_a
    const-string p1, "disabled"

    :goto_1
    const-string p2, "PRoot debug "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v2

    .line 47
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->listAllProcesses(Lorg/apache/cordova/CallbackContext;)V

    return v2

    .line 44
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->listProcesses(Lorg/apache/cordova/CallbackContext;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ea773a1 -> :sswitch_9
        -0x67b3c186 -> :sswitch_8
        -0x38aa19dd -> :sswitch_7
        -0x14a8370b -> :sswitch_6
        0x2fb891 -> :sswitch_5
        0x360802 -> :sswitch_4
        0x68ac462 -> :sswitch_3
        0x6c257df -> :sswitch_2
        0x1e599531 -> :sswitch_1
        0x39e05d35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 21
    new-instance p2, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processManager:Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;

    return-void
.end method

.method synthetic lambda$exec$0$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/String;ZLorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processManager:Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;->executeCommand(Ljava/lang/String;Z)Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager$ExecResult;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager$ExecResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    iget-object p1, p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager$ExecResult;->stdout:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager$ExecResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startProcess$1$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stdout:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->sendPluginMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startProcess$2$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/Process;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda4;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/String;)V

    .line 96
    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/StreamHandler;->streamOutput(Ljava/io/InputStream;Lcom/foxdebug/acode/rk/exec/terminal/StreamHandler$OutputListener;)V

    return-void
.end method

.method synthetic lambda$startProcess$3$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stderr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->sendPluginMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$startProcess$4$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/Process;Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/String;)V

    .line 102
    invoke-static {p1, v0}, Lcom/foxdebug/acode/rk/exec/terminal/StreamHandler;->streamOutput(Ljava/io/InputStream;Lcom/foxdebug/acode/rk/exec/terminal/StreamHandler$OutputListener;)V

    return-void
.end method

.method synthetic lambda$startProcess$5$com-foxdebug-acode-rk-exec-terminal-BackgroundExecutor(Ljava/lang/String;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 6

    .line 0
    const-string v0, "exit:"

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processManager:Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;

    invoke-virtual {v1, p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;->createProcessBuilder(Ljava/lang/String;Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->getPid(Ljava/lang/Process;)J

    move-result-wide v2

    .line 88
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processes:Ljava/util/Map;

    invoke-interface {v4, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processInputs:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processCallbacks:Ljava/util/Map;

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->processDetails:Ljava/util/Map;

    new-instance v5, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;

    invoke-direct {v5, p1, p2, v2, v3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$ProcessDetails;-><init>(Ljava/lang/String;ZJ)V

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p4, p3, p1}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->sendPluginResult(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Z)V

    .line 96
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/Process;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 102
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor$$ExternalSyntheticLambda3;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;Ljava/lang/Process;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 107
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result p1

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->sendPluginMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p3}, Lcom/foxdebug/acode/rk/exec/terminal/BackgroundExecutor;->cleanup(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to start process: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method
