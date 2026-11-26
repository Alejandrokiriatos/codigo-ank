.class Lcom/foxdebug/sftp/Sftp$RemoteShell$1;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp$RemoteShell;->write(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/foxdebug/sftp/Sftp$RemoteShell;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

    .line 301
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->this$1:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->val$input:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->val$input:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->this$1:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetchannel(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/client/SessionChannelNG;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 307
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->this$1:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    invoke-static {v0}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$fgetchannel(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 308
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 310
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->this$1:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    iget-object v2, v1, Lcom/foxdebug/sftp/Sftp$RemoteShell;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->-$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;->this$1:Lcom/foxdebug/sftp/Sftp$RemoteShell;

    iget-object v2, v2, Lcom/foxdebug/sftp/Sftp$RemoteShell;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method
