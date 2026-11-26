.class Lcom/foxdebug/sftp/Sftp$14;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->createFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1492
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$14;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$14;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$14;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1495
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$14;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1496
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$14;->val$args:Lorg/json/JSONArray;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$14;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$14;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v3
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 1500
    :try_start_1
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$14;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1501
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1502
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$14;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v4, "File already exists"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 1510
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1511
    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 1513
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1514
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v1

    .line 1517
    :goto_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$14;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$14;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_2

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$14;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Not connected"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 1525
    :goto_1
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$14;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$14;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
