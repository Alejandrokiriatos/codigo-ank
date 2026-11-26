.class public Lcom/sshtools/common/util/TextConversionStream;
.super Ljava/io/FilterOutputStream;
.source "TextConversionStream.java"


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

.field stripCR:Z

.field stripCRLF:Z

.field stripLF:Z

.field systemNL:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/io/OutputStream;)V
    .locals 6

    .line 103
    invoke-direct {p0, p3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    const-string p3, "line.separator"

    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sshtools/common/util/TextConversionStream;->systemNL:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->encounteredBinary:Z

    .line 99
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->lastCharacterWasCR:Z

    .line 105
    const-string v1, "Unknown text style: "

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    .line 122
    iput-boolean v5, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    .line 123
    iput-boolean v5, p0, Lcom/sshtools/common/util/TextConversionStream;->stripLF:Z

    .line 124
    iput-boolean v5, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCRLF:Z

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_1
    iput-boolean v5, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    .line 113
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripLF:Z

    .line 114
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCRLF:Z

    goto :goto_0

    .line 117
    :cond_2
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    .line 118
    iput-boolean v5, p0, Lcom/sshtools/common/util/TextConversionStream;->stripLF:Z

    .line 119
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCRLF:Z

    goto :goto_0

    .line 107
    :cond_3
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    .line 108
    iput-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripLF:Z

    .line 109
    iput-boolean v5, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCRLF:Z

    :goto_0
    if-eqz p2, :cond_8

    if-eq p2, v5, :cond_7

    if-eq p2, v4, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TEXT_ALL cannot be used for an output style"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_5
    new-array p1, v5, [B

    const/16 p2, 0xd

    aput-byte p2, p1, v0

    iput-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    return-void

    .line 143
    :cond_6
    new-array p1, v5, [B

    const/16 p2, 0xa

    aput-byte p2, p1, v0

    iput-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    return-void

    .line 137
    :cond_7
    new-array p1, v4, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    return-void

    .line 134
    :cond_8
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 264
    :try_start_0
    new-instance p0, Lcom/sshtools/common/util/TextConversionStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "C:\\TEXT.txt"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/sshtools/common/util/TextConversionStream;-><init>(IILjava/io/OutputStream;)V

    .line 270
    const-string v0, "1234567890\r"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/TextConversionStream;->write([B)V

    .line 271
    const-string v0, "\n01234567890\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/TextConversionStream;->write([B)V

    .line 272
    const-string v0, "\r\n12323445546657"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/TextConversionStream;->write([B)V

    .line 273
    const-string v0, "21344356545656\r"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/TextConversionStream;->write([B)V

    .line 275
    invoke-virtual {p0}, Lcom/sshtools/common/util/TextConversionStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 278
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RECIEVED IOException IN Ssh1Protocol.close:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->lastCharacterWasCR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 172
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method public hasBinary()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/sshtools/common/util/TextConversionStream;->encounteredBinary:Z

    return v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 164
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/TextConversionStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const p1, 0x8000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 193
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_c

    const/16 p3, 0xd

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne p1, p3, :cond_5

    .line 197
    iget-boolean p3, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCRLF:Z

    if-eqz p3, :cond_3

    .line 198
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 199
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result p3

    if-ne p3, p2, :cond_0

    .line 201
    iput-boolean v2, p0, Lcom/sshtools/common/util/TextConversionStream;->lastCharacterWasCR:Z

    return-void

    :cond_0
    if-ne p3, v1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 211
    iget-boolean p2, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    if-eqz p2, :cond_2

    .line 212
    iget-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 218
    :cond_3
    iget-boolean p2, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    if-eqz p2, :cond_4

    .line 219
    iget-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_8

    .line 227
    iget-boolean p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lastCharacterWasCR:Z

    if-eqz p2, :cond_6

    .line 228
    iget-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/sshtools/common/util/TextConversionStream;->lastCharacterWasCR:Z

    goto :goto_0

    .line 232
    :cond_6
    iget-boolean p2, p0, Lcom/sshtools/common/util/TextConversionStream;->stripLF:Z

    if-eqz p2, :cond_7

    .line 233
    iget-object p1, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 235
    :cond_7
    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 240
    :cond_8
    iget-boolean p2, p0, Lcom/sshtools/common/util/TextConversionStream;->lastCharacterWasCR:Z

    if-eqz p2, :cond_a

    .line 241
    iget-boolean p2, p0, Lcom/sshtools/common/util/TextConversionStream;->stripCR:Z

    if-eqz p2, :cond_9

    .line 242
    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    iget-object p3, p0, Lcom/sshtools/common/util/TextConversionStream;->lineEnding:[B

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 244
    :cond_9
    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    :cond_a
    :goto_1
    const/16 p2, 0x74

    if-eq p1, p2, :cond_b

    const/16 p2, 0xc

    if-eq p1, p2, :cond_b

    and-int/lit16 p2, p1, 0xff

    const/16 p3, 0x20

    if-ge p2, p3, :cond_b

    .line 251
    iput-boolean v2, p0, Lcom/sshtools/common/util/TextConversionStream;->encounteredBinary:Z

    .line 254
    :cond_b
    iget-object p2, p0, Lcom/sshtools/common/util/TextConversionStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    :cond_c
    return-void
.end method
