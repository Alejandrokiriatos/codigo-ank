.class public Lcom/sshtools/common/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static BUFFER_SIZE:I = 0xffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 0

    .line 515
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez p0, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static closeStream(Ljava/io/InputStream;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static closeStream(Ljava/io/OutputStream;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 625
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->transferTo(Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 624
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 70
    invoke-static {p0, p1, v0, v1}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    sget v4, Lcom/sshtools/common/util/IOUtils;->BUFFER_SIZE:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;JIZ)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;JIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-array v0, p4, [B

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    :cond_0
    :goto_0
    cmp-long v3, p2, v1

    if-lez v3, :cond_4

    int-to-long v5, p4

    cmp-long v3, p2, v5

    if-gez v3, :cond_1

    long-to-int v3, p2

    .line 116
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0, v0, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    goto :goto_3

    :cond_2
    int-to-long v5, v3

    sub-long/2addr p2, v5

    .line 124
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p5, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 131
    :cond_3
    :goto_2
    invoke-virtual {p0, v0, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    if-gez p2, :cond_5

    :cond_4
    :goto_3
    return-void

    .line 134
    :cond_5
    invoke-virtual {p1, v0, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p5, :cond_3

    .line 136
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_2
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    sget v4, Lcom/sshtools/common/util/IOUtils;->BUFFER_SIZE:I

    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;JIZ)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 354
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_8

    .line 356
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 358
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 362
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    invoke-static {v2, v3}, Lcom/sshtools/common/util/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 366
    :cond_2
    invoke-static {v2, p1}, Lcom/sshtools/common/util/IOUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 372
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    .line 374
    :cond_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 375
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x7fa6

    .line 376
    new-array p1, p1, [B

    .line 378
    :goto_2
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    .line 379
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 381
    :cond_7
    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/InputStream;)Z

    .line 382
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/OutputStream;)Z

    :cond_8
    return-void
.end method

.method public static copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 151
    invoke-static {p0, p1, v0, v1}, Lcom/sshtools/common/util/IOUtils;->copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget v4, Lcom/sshtools/common/util/IOUtils;->BUFFER_SIZE:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/util/IOUtils;->copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;JIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;JIZ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-array v0, p4, [B

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    move-wide v5, v1

    :cond_0
    :goto_0
    cmp-long v3, p2, v1

    if-lez v3, :cond_3

    int-to-long v7, p4

    cmp-long v3, p2, v7

    if-gez v3, :cond_1

    long-to-int v3, p2

    .line 198
    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p0, v0, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    :goto_1
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v7, v3

    sub-long/2addr p2, v7

    add-long/2addr v5, v7

    .line 208
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p5, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    :cond_3
    :goto_2
    return-wide v5

    .line 215
    :cond_4
    :goto_3
    invoke-virtual {p0, v0, v4, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    if-gez p2, :cond_5

    return-wide v1

    .line 218
    :cond_5
    invoke-virtual {p1, v0, v4, p2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p2

    add-long/2addr v1, p2

    if-eqz p5, :cond_4

    .line 221
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_3
.end method

.method public static copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;Z)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    sget v4, Lcom/sshtools/common/util/IOUtils;->BUFFER_SIZE:I

    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/util/IOUtils;->copyWithCount(Ljava/io/InputStream;Ljava/io/OutputStream;JIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static fromByteSize(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7

    .line 429
    const-string v0, "\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 433
    :cond_0
    const-string v0, "(\\d+)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Invalid input %s"

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 439
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 445
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v1, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "TIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "PIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "MIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "KIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "GIB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "TB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "PB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_9
    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_a
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_b
    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_c
    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    move v1, v4

    goto :goto_1

    :sswitch_d
    const-string v4, "K"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x10000000000L

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 450
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000L

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 465
    :pswitch_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 470
    :pswitch_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 460
    :pswitch_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 453
    :pswitch_5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0xe8d4a51000L

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 448
    :pswitch_6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x38d7ea4c68000L

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 463
    :pswitch_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 468
    :pswitch_8
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 458
    :pswitch_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 436
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_e
        0x4b -> :sswitch_d
        0x4d -> :sswitch_c
        0x50 -> :sswitch_b
        0x54 -> :sswitch_a
        0x8db -> :sswitch_9
        0x957 -> :sswitch_8
        0x995 -> :sswitch_7
        0x9f2 -> :sswitch_6
        0xa6e -> :sswitch_5
        0x113a0 -> :sswitch_4
        0x122a4 -> :sswitch_3
        0x12a26 -> :sswitch_2
        0x13569 -> :sswitch_1
        0x1446d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getExtensionIndex(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x2e

    .line 525
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    return p0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 529
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->getExtensionIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 531
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 537
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->getExtensionIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isOlderThan(Ljava/io/File;Ljava/time/Duration;)Z
    .locals 4

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 632
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$recursiveContentsDelete$0([Ljava/nio/file/FileVisitOption;Ljava/nio/file/Path;)V
    .locals 0

    .line 290
    invoke-static {p1, p0}, Lcom/sshtools/common/util/IOUtils;->recursiveDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)V

    return-void
.end method

.method static synthetic lambda$recursiveDelete$1(Ljava/nio/file/Path;)V
    .locals 1

    .line 337
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 339
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static readStringFromFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 590
    :try_start_0
    invoke-static {v0, p1}, Lcom/sshtools/common/util/IOUtils;->readStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 589
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static readStringFromFile(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 595
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    .line 596
    :try_start_0
    invoke-static {p0, p1}, Lcom/sshtools/common/util/IOUtils;->readStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 597
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 595
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static readStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 602
    :try_start_0
    invoke-static {p0, v0}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 603
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 601
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static readUTF8StringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/sshtools/common/util/IOUtils;->readStringFromFile(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readUTF8StringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/sshtools/common/util/IOUtils;->readStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readyFully(Ljava/io/InputStream;[B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    .line 400
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return v0
.end method

.method public static varargs recursiveContentsDelete(Ljava/io/File;[Ljava/nio/file/FileVisitOption;)V
    .locals 0

    .line 277
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sshtools/common/util/IOUtils;->recursiveContentsDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)V

    return-void
.end method

.method public static varargs recursiveContentsDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)V
    .locals 1

    .line 289
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    new-instance v0, Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda1;-><init>([Ljava/nio/file/FileVisitOption;)V

    invoke-interface {p0, v0}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 291
    :try_start_2
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 289
    :try_start_3
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 293
    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static varargs recursiveDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)V
    .locals 1

    .line 334
    :try_start_0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :try_start_1
    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/common/util/IOUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 342
    :try_start_2
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 334
    :try_start_3
    invoke-interface {p0}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 344
    new-instance p1, Ljava/io/UncheckedIOException;

    invoke-direct {p1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static rollover(Ljava/io/File;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/util/IOUtils;->getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 550
    const-string v2, ".%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_0
    const-string v0, ""

    .line 555
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    move v4, p1

    :goto_1
    const/4 v5, 0x1

    .line 557
    const-string v6, "Faield to rename rolling log file to "

    if-lt v4, v5, :cond_5

    .line 559
    new-instance v5, Ljava/io/File;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v1, v7, v0}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s.%d%s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    if-ne v4, p1, :cond_2

    .line 562
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 563
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to delete rolling log file "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 566
    :cond_2
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 567
    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, -0x1

    move-object v3, v5

    goto :goto_1

    .line 574
    :cond_5
    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    .line 575
    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha1Digest(Ljava/io/File;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->sha1Digest(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1Digest(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    :try_start_0
    new-instance v0, Ljava/security/DigestOutputStream;

    new-instance v1, Lcom/sshtools/common/util/IOUtils$1;

    invoke-direct {v1}, Lcom/sshtools/common/util/IOUtils$1;-><init>()V

    const-string v2, "SHA-1"

    .line 505
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 506
    :try_start_1
    invoke-static {p0, v0}, Lcom/sshtools/common/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 507
    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :try_start_2
    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 509
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/InputStream;)Z

    return-object v1

    :catchall_0
    move-exception v1

    .line 503
    :try_start_3
    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 509
    invoke-static {p0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/InputStream;)Z

    .line 510
    throw v0
.end method

.method public static varargs silentRecursiveDelete(Ljava/io/File;[Ljava/nio/file/FileVisitOption;)Z
    .locals 0

    .line 306
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sshtools/common/util/IOUtils;->silentRecursiveDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Z

    move-result p0

    return p0
.end method

.method public static varargs silentRecursiveDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Z
    .locals 0

    .line 319
    :try_start_0
    invoke-static {p0, p1}, Lcom/sshtools/common/util/IOUtils;->recursiveDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)V
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toByteSize(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 478
    invoke-static {p0, p1, v0}, Lcom/sshtools/common/util/IOUtils;->toByteSize(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toByteSize(DI)Ljava/lang/String;
    .locals 7

    if-ltz p2, :cond_1

    const/4 v0, 0x6

    .line 486
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "B"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "KB"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "MB"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "GB"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "TB"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "PB"

    aput-object v3, v0, v1

    :goto_0
    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double v3, p0, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    move-wide p0, v3

    goto :goto_0

    .line 494
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "%."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "f%s"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aget-object p1, v0, v2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 484
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of decimal places must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static writeBytesToFile([BLjava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 616
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/OutputStream;)Z

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/OutputStream;)Z

    .line 619
    throw p0
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 424
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/sshtools/common/util/IOUtils;->writeStringToStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 423
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static writeStringToStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 412
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 415
    throw p1
.end method

.method public static writeUTF8StringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/sshtools/common/util/IOUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static writeUTF8StringToStream(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/sshtools/common/util/IOUtils;->writeStringToStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
