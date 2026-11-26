.class Lcom/sshtools/synergy/ssh/TransportProtocol$1;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;->sendLocalIdentification(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

.field final synthetic val$doHttpRedirect:Z

.field final synthetic val$hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iput-boolean p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->val$doHttpRedirect:Z

    iput-object p3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->val$hostname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 2

    .line 436
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object p1, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent local identification string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 437
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sentLocalIdentification:Z

    .line 442
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-boolean p1, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->receivedRemoteIdentification:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->canSendKeyExchangeInit()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 443
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V

    :cond_1
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 5

    const-string v0, "HTTP/1.1 302 Moved Location\r\nLocation: "

    .line 420
    :try_start_0
    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->val$doHttpRedirect:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UTF-8"

    if-eqz v1, :cond_0

    .line 421
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v1, v1, Lcom/sshtools/synergy/ssh/TransportProtocol;->sshContext:Lcom/sshtools/synergy/ssh/SshContext;

    .line 422
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getHttpRedirectUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "${hostname}"

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->val$hostname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    .line 425
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\r\nConnection: close\r\nContent-Type: text/plain\r\nContent-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localIdentification:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    .line 430
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UTF-8 is not supported!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
