.class Lcom/sshtools/common/files/direct/NioFile$2;
.super Ljava/lang/Object;
.source "NioFile.java"

# interfaces
.implements Lcom/sshtools/common/files/AbstractFileRandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/direct/NioFile;->openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/files/direct/NioFile;

.field final synthetic val$channel:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/direct/NioFile;Ljava/nio/channels/SeekableByteChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lcom/sshtools/common/files/direct/NioFile$2;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    iput-object p2, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    return-void
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 608
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 609
    invoke-virtual {p0, v1, v2, v0}, Lcom/sshtools/common/files/direct/NioFile$2;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 611
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    return v3
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method

.method public setLength(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$2;->val$channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
