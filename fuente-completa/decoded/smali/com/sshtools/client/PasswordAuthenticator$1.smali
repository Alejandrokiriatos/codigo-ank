.class Lcom/sshtools/client/PasswordAuthenticator$1;
.super Lcom/sshtools/client/AuthenticationMessage;
.source "PasswordAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/PasswordAuthenticator;->authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/PasswordAuthenticator;

.field final synthetic val$tmp:[B


# direct methods
.method constructor <init>(Lcom/sshtools/client/PasswordAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sshtools/client/PasswordAuthenticator$1;->this$0:Lcom/sshtools/client/PasswordAuthenticator;

    iput-object p5, p0, Lcom/sshtools/client/PasswordAuthenticator$1;->val$tmp:[B

    invoke-direct {p0, p2, p3, p4}, Lcom/sshtools/client/AuthenticationMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/sshtools/client/AuthenticationMessage;->writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    iget-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator$1;->val$tmp:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v0, p0, Lcom/sshtools/client/PasswordAuthenticator$1;->val$tmp:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
