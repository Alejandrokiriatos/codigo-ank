.class public interface abstract Lcom/sshtools/client/PassphrasePrompt;
.super Ljava/lang/Object;
.source "PassphrasePrompt.java"

# interfaces
.implements Lcom/sshtools/client/NotifiedPrompt;


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public completed(ZLjava/lang/String;Lcom/sshtools/client/ClientAuthenticator;)V
    .locals 0

    return-void
.end method

.method public abstract getPasshrase(Ljava/lang/String;)Ljava/lang/String;
.end method
