.class Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;
.super Ljava/lang/Object;
.source "PublicKeyAuthentication.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;

.field final synthetic val$algorithm:Ljava/lang/String;

.field final synthetic val$keyblob:[B


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->this$1:Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;

    iput-object p2, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->val$algorithm:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->val$keyblob:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 252
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 253
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_USERAUTH_PK_OK"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x3c

    .line 243
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 244
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->val$algorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 245
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->val$algorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 246
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->val$keyblob:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 247
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;->val$keyblob:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
