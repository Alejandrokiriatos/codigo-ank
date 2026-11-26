.class public interface abstract Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;
.super Ljava/lang/Object;
.source "AbstractAuthenticationProtocol.java"


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
.field public static final SSH_MSG_USERAUTH_BANNER:I = 0x35

.field public static final SSH_MSG_USERAUTH_FAILURE:I = 0x33

.field public static final SSH_MSG_USERAUTH_REQUEST:I = 0x32

.field public static final SSH_MSG_USERAUTH_SUCCESS:I = 0x34


# virtual methods
.method public abstract canContinue()Z
.end method

.method public abstract completedAuthentication()V
.end method

.method public abstract discardAuthentication()V
.end method

.method public abstract failedAuthentication()V
.end method

.method public abstract failedAuthentication(ZZ)V
.end method

.method public abstract markFailed()V
.end method
