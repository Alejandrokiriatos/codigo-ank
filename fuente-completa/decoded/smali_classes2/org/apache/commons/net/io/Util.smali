.class public final Lorg/apache/commons/net/io/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEFAULT_COPY_BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public static copyReader(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 84
    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyReader(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 102
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyReader(Ljava/io/Reader;Ljava/io/Writer;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x400

    .line 129
    :goto_0
    new-array p2, p2, [C

    const-wide/16 v0, 0x0

    move-wide v1, v0

    .line 132
    :goto_1
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_5

    if-nez v6, :cond_3

    .line 136
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_4

    .line 140
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 141
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v3, 0x1

    add-long v6, v1, v3

    if-eqz p5, :cond_2

    const/4 v8, 0x1

    move-wide v9, p3

    move-object/from16 v5, p5

    .line 144
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-wide v1, v6

    goto :goto_5

    :cond_2
    :goto_2
    move-wide v1, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 149
    :try_start_2
    invoke-virtual {p1, p2, v0, v6}, Ljava/io/Writer;->write([CII)V

    .line 150
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    int-to-long v3, v6

    add-long v4, v1, v3

    if-eqz p5, :cond_4

    move-wide v7, p3

    move-object/from16 v3, p5

    .line 153
    :try_start_3
    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    move-wide v1, v4

    goto :goto_5

    :cond_4
    :goto_3
    move-wide v1, v4

    goto :goto_1

    :cond_5
    :goto_4
    return-wide v1

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 157
    :goto_5
    new-instance p1, Lorg/apache/commons/net/io/CopyStreamException;

    const-string p2, "IOException caught while copying."

    invoke-direct {p1, p2, v1, v2, p0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw p1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 172
    invoke-static {p0, p1, v0}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 190
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 215
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/io/CopyStreamException;
        }
    .end annotation

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x400

    .line 244
    :goto_0
    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    move-wide v1, v0

    .line 247
    :goto_1
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_7

    if-nez v6, :cond_4

    .line 252
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_4

    .line 256
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    if-eqz p6, :cond_2

    .line 258
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    const-wide/16 v3, 0x1

    add-long v6, v1, v3

    if-eqz p5, :cond_3

    const/4 v8, 0x1

    move-wide v9, p3

    move-object/from16 v5, p5

    .line 262
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    move-wide v1, v6

    goto :goto_5

    :cond_3
    :goto_2
    move-wide v1, v6

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 267
    :try_start_2
    invoke-virtual {p1, p2, v0, v6}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p6, :cond_5

    .line 269
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    int-to-long v3, v6

    add-long v4, v1, v3

    if-eqz p5, :cond_6

    move-wide v7, p3

    move-object/from16 v3, p5

    .line 273
    :try_start_3
    invoke-interface/range {v3 .. v8}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    move-wide v1, v4

    goto :goto_5

    :cond_6
    :goto_3
    move-wide v1, v4

    goto :goto_1

    :cond_7
    :goto_4
    return-wide v1

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 277
    :goto_5
    new-instance p1, Lorg/apache/commons/net/io/CopyStreamException;

    const-string p2, "IOException caught while copying."

    invoke-direct {p1, p2, v1, v2, p0}, Lorg/apache/commons/net/io/CopyStreamException;-><init>(Ljava/lang/String;JLjava/io/IOException;)V

    throw p1
.end method

.method public static newPrintWriter(Ljava/io/PrintStream;)Ljava/io/PrintWriter;
    .locals 3

    .line 291
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method
