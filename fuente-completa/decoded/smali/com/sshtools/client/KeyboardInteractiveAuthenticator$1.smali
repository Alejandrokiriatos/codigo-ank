.class Lcom/sshtools/client/KeyboardInteractiveAuthenticator$1;
.super Lcom/sshtools/client/AuthenticationMessage;
.source "KeyboardInteractiveAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;


# direct methods
.method constructor <init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$1;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    invoke-direct {p0, p2, p3, p4}, Lcom/sshtools/client/AuthenticationMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/sshtools/client/AuthenticationMessage;->writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
