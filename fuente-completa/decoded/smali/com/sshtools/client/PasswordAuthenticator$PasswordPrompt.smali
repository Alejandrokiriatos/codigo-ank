.class public interface abstract Lcom/sshtools/client/PasswordAuthenticator$PasswordPrompt;
.super Ljava/lang/Object;
.source "PasswordAuthenticator.java"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Lcom/sshtools/client/NotifiedPrompt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/PasswordAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PasswordPrompt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/sshtools/client/NotifiedPrompt;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public completed(ZLjava/lang/String;Lcom/sshtools/client/ClientAuthenticator;)V
    .locals 0

    return-void
.end method
