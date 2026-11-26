.class public Lcom/sshtools/common/zlib/ZLibCompression;
.super Ljava/lang/Object;
.source "ZLibCompression.java"

# interfaces
.implements Lcom/sshtools/common/ssh/compression/SshCompression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/zlib/ZLibCompression$ZLibCompressionFactory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "zlib"

.field private static final BUF_SIZE:I = 0xffff


# instance fields
.field private compressOut:Ljava/nio/ByteBuffer;

.field private deflater:Ljava/util/zip/Deflater;

.field private inflater:Ljava/util/zip/Inflater;

.field private uncompressOut:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 64
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->compressOut:Ljava/nio/ByteBuffer;

    .line 65
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/zlib/ZLibCompression;->uncompressOut:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public compress([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sshtools/common/zlib/ZLibCompression;->compressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 77
    iget-object v0, p0, Lcom/sshtools/common/zlib/ZLibCompression;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->deflater:Ljava/util/zip/Deflater;

    iget-object p2, p0, Lcom/sshtools/common/zlib/ZLibCompression;->compressOut:Ljava/nio/ByteBuffer;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/zip/Deflater;->deflate(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->compressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    new-array p1, p1, [B

    .line 83
    iget-object p2, p0, Lcom/sshtools/common/zlib/ZLibCompression;->compressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    .line 84
    iget-object p2, p0, Lcom/sshtools/common/zlib/ZLibCompression;->compressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "zlib"

    return-object v0
.end method

.method public init(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object p1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->deflater:Ljava/util/zip/Deflater;

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 71
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->inflater:Ljava/util/zip/Inflater;

    :cond_1
    return-void
.end method

.method public uncompress([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/zlib/ZLibCompression;->uncompressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/zlib/ZLibCompression;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 92
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->inflater:Ljava/util/zip/Inflater;

    iget-object p2, p0, Lcom/sshtools/common/zlib/ZLibCompression;->uncompressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/util/zip/Inflater;->inflate(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/zlib/ZLibCompression;->uncompressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    new-array p2, p1, [B

    .line 98
    iget-object p3, p0, Lcom/sshtools/common/zlib/ZLibCompression;->uncompressOut:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    .line 99
    iget-object p3, p0, Lcom/sshtools/common/zlib/ZLibCompression;->uncompressOut:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p2

    :catch_0
    move-exception p1

    .line 95
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Failed to uncompress."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
