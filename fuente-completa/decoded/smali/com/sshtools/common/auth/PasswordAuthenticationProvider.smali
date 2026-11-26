.class public abstract Lcom/sshtools/common/auth/PasswordAuthenticationProvider;
.super Ljava/lang/Object;
.source "PasswordAuthenticationProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract changePassword(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/auth/PasswordChangeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "password"

    return-object v0
.end method

.method public abstract verifyPassword(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/auth/PasswordChangeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
