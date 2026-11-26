.class public Lcom/sshtools/client/shell/ShellTimeoutException;
.super Ljava/lang/Exception;
.source "ShellTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x6b5e19b2b4e0b9bbL


# direct methods
.method constructor <init>()V
    .locals 1

    .line 37
    const-string v0, "The shell operation timed out"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
