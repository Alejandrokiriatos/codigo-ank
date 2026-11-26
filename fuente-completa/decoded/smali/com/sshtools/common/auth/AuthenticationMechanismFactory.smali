.class public interface abstract Lcom/sshtools/common/auth/AuthenticationMechanismFactory;
.super Ljava/lang/Object;
.source "AuthenticationMechanismFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/sshtools/common/ssh/Context;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final KEYBOARD_INTERACTIVE_AUTHENTICATION:Ljava/lang/String; = "keyboard-interactive"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final PASSWORD_AUTHENTICATION:Ljava/lang/String; = "password"

.field public static final PUBLICKEY_AUTHENTICATION:Ljava/lang/String; = "publickey"


# virtual methods
.method public abstract addProvider(Lcom/sshtools/common/auth/Authenticator;)V
.end method

.method public abstract addProviders(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/auth/Authenticator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createInstance(Ljava/lang/String;Lcom/sshtools/common/sshd/AbstractServerTransport;Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/auth/AuthenticationMechanism;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sshd/AbstractServerTransport<",
            "TC;>;",
            "Lcom/sshtools/common/auth/AbstractAuthenticationProtocol<",
            "TC;>;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Lcom/sshtools/common/auth/AuthenticationMechanism;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;
        }
    .end annotation
.end method

.method public abstract getProviders(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/auth/Authenticator;
.end method

.method public abstract getRequiredMechanisms(Lcom/sshtools/common/ssh/SshConnection;)[Ljava/lang/String;
.end method

.method public abstract getSupportedMechanisms()[Ljava/lang/String;
.end method

.method public abstract isSupportedMechanism(Ljava/lang/String;)Z
.end method
