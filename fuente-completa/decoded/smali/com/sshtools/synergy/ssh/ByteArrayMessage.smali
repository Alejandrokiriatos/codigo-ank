.class public abstract Lcom/sshtools/synergy/ssh/ByteArrayMessage;
.super Ljava/lang/Object;
.source "ByteArrayMessage.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# instance fields
.field msg:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ByteArrayMessage;->msg:[B

    return-void
.end method


# virtual methods
.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ByteArrayMessage;->msg:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
