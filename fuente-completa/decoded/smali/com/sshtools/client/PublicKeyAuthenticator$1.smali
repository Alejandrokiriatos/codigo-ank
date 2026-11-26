.class Lcom/sshtools/client/PublicKeyAuthenticator$1;
.super Lcom/sshtools/client/AuthenticationMessage;
.source "PublicKeyAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/PublicKeyAuthenticator;->doPublicKeyAuth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/PublicKeyAuthenticator;

.field final synthetic val$msg:[B


# direct methods
.method constructor <init>(Lcom/sshtools/client/PublicKeyAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/sshtools/client/PublicKeyAuthenticator$1;->this$0:Lcom/sshtools/client/PublicKeyAuthenticator;

    iput-object p5, p0, Lcom/sshtools/client/PublicKeyAuthenticator$1;->val$msg:[B

    invoke-direct {p0, p2, p3, p4}, Lcom/sshtools/client/AuthenticationMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/sshtools/client/AuthenticationMessage;->writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z

    .line 167
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator$1;->val$msg:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
