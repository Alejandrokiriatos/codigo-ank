.class public Lcom/sshtools/common/sftp/FileIsDirectoryException;
.super Ljava/io/IOException;
.source "FileIsDirectoryException.java"


# static fields
.field private static final serialVersionUID:J = 0x364f050a4181bceL


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const-string v0, "File is a directory."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
