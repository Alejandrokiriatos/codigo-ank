.class public Lcom/sshtools/common/sftp/extensions/FileHandleHashingExtension;
.super Lcom/sshtools/common/sftp/extensions/FileHashingExtension;
.source "FileHandleHashingExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "check-file-handle"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    const-string v0, "check-file-handle"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getFileHandle(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    return-object p1
.end method
