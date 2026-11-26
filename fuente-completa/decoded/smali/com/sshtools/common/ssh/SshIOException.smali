.class public Lcom/sshtools/common/ssh/SshIOException;
.super Ljava/io/IOException;
.source "SshIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x55a636e34fa24f1aL


# instance fields
.field realEx:Lcom/sshtools/common/ssh/SshException;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshException;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sshtools/common/ssh/SshIOException;->realEx:Lcom/sshtools/common/ssh/SshException;

    return-void
.end method


# virtual methods
.method public getRealException()Lcom/sshtools/common/ssh/SshException;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sshtools/common/ssh/SshIOException;->realEx:Lcom/sshtools/common/ssh/SshException;

    return-object v0
.end method
