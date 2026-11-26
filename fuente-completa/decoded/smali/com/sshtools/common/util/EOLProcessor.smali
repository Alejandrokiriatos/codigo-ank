.class public Lcom/sshtools/common/util/EOLProcessor;
.super Ljava/lang/Object;
.source "EOLProcessor.java"


# static fields
.field public static final TEXT_ALL:I = 0x4

.field public static final TEXT_CR:I = 0x3

.field public static final TEXT_CRLF:I = 0x1

.field public static final TEXT_DOS:I = 0x1

.field public static final TEXT_LF:I = 0x2

.field public static final TEXT_MAC:I = 0x3

.field public static final TEXT_SYSTEM:I = 0x0

.field public static final TEXT_UNIX:I = 0x2

.field public static final TEXT_WINDOWS:I = 0x1


# instance fields
.field encounteredBinary:Z

.field lastCharacterWasCR:Z

.field lineEnding:[B

.field out:Ljava/io/OutputStream;

.field stripCR:Z

.field stripCRLF:Z

.field stripLF:Z

.field systemNL:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/util/EOLProcessor;->systemNL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    .line 95
    iput-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->stripLF:Z

    .line 96
    iput-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCRLF:Z

    .line 97
    iput-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->encounteredBinary:Z

    .line 99
    iput-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    .line 105
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    .line 107
    const-string p3, "Unknown text style: "

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0xa

    const/16 v4, 0xd

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 118
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    .line 119
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripLF:Z

    .line 120
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCRLF:Z

    goto :goto_0

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    goto :goto_0

    .line 115
    :cond_2
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripLF:Z

    goto :goto_0

    .line 109
    :cond_3
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCRLF:Z

    goto :goto_0

    .line 124
    :cond_4
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->systemNL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 125
    array-length v7, p1

    if-ne v7, v5, :cond_5

    aget-byte v7, p1, v0

    if-ne v7, v4, :cond_5

    aget-byte v7, p1, v6

    if-ne v7, v3, :cond_5

    .line 126
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCRLF:Z

    goto :goto_0

    .line 127
    :cond_5
    array-length v7, p1

    if-ne v7, v6, :cond_6

    aget-byte v7, p1, v0

    if-ne v7, v4, :cond_6

    .line 128
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    goto :goto_0

    .line 129
    :cond_6
    array-length v7, p1

    if-ne v7, v6, :cond_c

    aget-byte p1, p1, v0

    if-ne p1, v3, :cond_c

    .line 130
    iput-boolean v6, p0, Lcom/sshtools/common/util/EOLProcessor;->stripLF:Z

    :goto_0
    if-eqz p2, :cond_b

    if-eq p2, v6, :cond_a

    if-eq p2, v5, :cond_9

    if-eq p2, v2, :cond_8

    if-eq p2, v1, :cond_7

    .line 159
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TEXT_ALL cannot be used for an output style"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_8
    new-array p1, v6, [B

    aput-byte v4, p1, v0

    iput-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    return-void

    .line 153
    :cond_9
    new-array p1, v6, [B

    aput-byte v3, p1, v0

    iput-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    return-void

    .line 147
    :cond_a
    new-array p1, v5, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    return-void

    .line 144
    :cond_b
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->systemNL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    return-void

    .line 132
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unsupported system EOL mode"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static createInputStream(IILjava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Lcom/sshtools/common/util/EOLProcessorInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/util/EOLProcessorInputStream;-><init>(IILjava/io/InputStream;)V

    return-object v0
.end method

.method public static createOutputStream(IILjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    new-instance v0, Lcom/sshtools/common/util/EOLProcessorOutputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/sshtools/common/util/EOLProcessorOutputStream;-><init>(IILjava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    if-eqz v0, :cond_1

    .line 176
    iget-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 183
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public hasBinary()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/sshtools/common/util/EOLProcessor;->encounteredBinary:Z

    return v0
.end method

.method public processBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const p1, 0x8000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 204
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_c

    const/16 p3, 0xa

    const/16 v1, 0xd

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 208
    iget-boolean v1, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCRLF:Z

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 210
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 212
    iput-boolean v2, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    goto/16 :goto_2

    :cond_0
    if-ne v1, p3, :cond_1

    .line 217
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 222
    iget-boolean p2, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    if-eqz p2, :cond_2

    .line 223
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 229
    :cond_3
    iget-boolean p2, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    if-eqz p2, :cond_4

    .line 230
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 232
    :cond_4
    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    if-ne p1, p3, :cond_8

    .line 238
    iget-boolean p3, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    if-eqz p3, :cond_6

    .line 239
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 240
    iput-boolean p2, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    goto :goto_0

    .line 243
    :cond_6
    iget-boolean p2, p0, Lcom/sshtools/common/util/EOLProcessor;->stripLF:Z

    if-eqz p2, :cond_7

    .line 244
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 246
    :cond_7
    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 251
    :cond_8
    iget-boolean p3, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    if-eqz p3, :cond_a

    .line 252
    iget-boolean p3, p0, Lcom/sshtools/common/util/EOLProcessor;->stripCR:Z

    if-eqz p3, :cond_9

    .line 253
    iget-object p3, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sshtools/common/util/EOLProcessor;->lineEnding:[B

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 255
    :cond_9
    iget-object p3, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {p3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 259
    :cond_a
    :goto_1
    iput-boolean p2, p0, Lcom/sshtools/common/util/EOLProcessor;->lastCharacterWasCR:Z

    const/16 p2, 0x74

    if-eq p1, p2, :cond_b

    const/16 p2, 0xc

    if-eq p1, p2, :cond_b

    and-int/lit16 p2, p1, 0xff

    const/16 p3, 0x20

    if-ge p2, p3, :cond_b

    .line 265
    iput-boolean v2, p0, Lcom/sshtools/common/util/EOLProcessor;->encounteredBinary:Z

    .line 268
    :cond_b
    iget-object p2, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    .line 272
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessor;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
