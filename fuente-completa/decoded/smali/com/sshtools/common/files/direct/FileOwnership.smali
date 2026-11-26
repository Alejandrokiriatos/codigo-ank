.class Lcom/sshtools/common/files/direct/FileOwnership;
.super Ljava/lang/Object;
.source "FileOwnership.java"


# instance fields
.field private final group:Ljava/nio/file/attribute/GroupPrincipal;

.field private final owner:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method public constructor <init>(Ljava/nio/file/attribute/UserPrincipal;Ljava/nio/file/attribute/GroupPrincipal;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sshtools/common/files/direct/FileOwnership;->owner:Ljava/nio/file/attribute/UserPrincipal;

    .line 49
    iput-object p2, p0, Lcom/sshtools/common/files/direct/FileOwnership;->group:Ljava/nio/file/attribute/GroupPrincipal;

    return-void
.end method


# virtual methods
.method public applyTo(Ljava/nio/file/Path;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 63
    const-class v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/sshtools/common/files/direct/FileOwnership;->owner:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 66
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, p0, Lcom/sshtools/common/files/direct/FileOwnership;->owner:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully set owner on Windows to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get FileOwnerAttributeView for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_1
    const-string v1, "nix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "nux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported OS for setting ownership: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    :goto_0
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_5

    .line 74
    iget-object p1, p0, Lcom/sshtools/common/files/direct/FileOwnership;->owner:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setOwner(Ljava/nio/file/attribute/UserPrincipal;)V

    .line 75
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sshtools/common/files/direct/FileOwnership;->owner:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v1}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully set owner to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/sshtools/common/files/direct/FileOwnership;->group:Ljava/nio/file/attribute/GroupPrincipal;

    if-eqz p1, :cond_4

    .line 77
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V

    .line 78
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v0, p0, Lcom/sshtools/common/files/direct/FileOwnership;->group:Ljava/nio/file/attribute/GroupPrincipal;

    invoke-interface {v0}, Ljava/nio/file/attribute/GroupPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully set group to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 81
    :cond_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get PosixFileAttributeView for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
