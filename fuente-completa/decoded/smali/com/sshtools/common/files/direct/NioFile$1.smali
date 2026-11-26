.class Lcom/sshtools/common/files/direct/NioFile$1;
.super Ljava/lang/Object;
.source "NioFile.java"

# interfaces
.implements Lcom/sshtools/common/sftp/OpenFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/files/direct/NioFile;->open(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;[B)Lcom/sshtools/common/sftp/OpenFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lockFlags:I

.field final synthetic this$0:Lcom/sshtools/common/files/direct/NioFile;

.field final synthetic val$accessFlags:Ljava/util/Optional;

.field final synthetic val$channel:Ljava/nio/channels/FileChannel;

.field final synthetic val$flags:Lcom/sshtools/common/util/UnsignedInteger32;

.field final synthetic val$handle:[B

.field final synthetic val$textMode:Z


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/direct/NioFile;Ljava/util/Optional;Ljava/nio/channels/FileChannel;Z[BLcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/sshtools/common/files/direct/NioFile$1;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    iput-object p2, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$accessFlags:Ljava/util/Optional;

    iput-object p3, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    iput-boolean p4, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$textMode:Z

    iput-object p5, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$handle:[B

    iput-object p6, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$flags:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 323
    iput p1, p0, Lcom/sshtools/common/files/direct/NioFile$1;->lockFlags:I

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

    .line 394
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public getAccessFlags()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$accessFlags:Ljava/util/Optional;

    return-object v0
.end method

.method public getFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlags()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$flags:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getHandle()[B
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$handle:[B

    return-object v0
.end method

.method public isTextMode()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$textMode:Z

    return v0
.end method

.method public lock(JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public lockFlags()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->lockFlags:I

    return v0
.end method

.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 363
    const-string v0, "ABSTRACT_FILE"

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile$1;->this$0:Lcom/sshtools/common/files/direct/NioFile;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 364
    const-string v0, "ABSTRACT_FILE_RAF"

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

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

    .line 353
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public unlock(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile$1;->val$channel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
