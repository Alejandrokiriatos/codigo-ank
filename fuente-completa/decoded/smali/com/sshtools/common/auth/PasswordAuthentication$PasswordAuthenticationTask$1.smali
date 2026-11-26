.class Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask$1;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask$1;->this$1:Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 152
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_PASSWORD_CHANGE_REQ"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 2

    const/16 v0, 0x3c

    .line 143
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    const-string v0, "Password change required."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
