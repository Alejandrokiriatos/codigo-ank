.class public interface abstract Lcom/sshtools/common/policy/FileFactory;
.super Ljava/lang/Object;
.source "FileFactory.java"


# virtual methods
.method public abstract getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method
