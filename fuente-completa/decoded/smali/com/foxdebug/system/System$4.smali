.class Lcom/foxdebug/system/System$4;
.super Ljava/lang/Object;
.source "System.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/system/System;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/system/System;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/foxdebug/system/System$4;->this$0:Lcom/foxdebug/system/System;

    iput-object p2, p0, Lcom/foxdebug/system/System$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/foxdebug/system/System$4;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/foxdebug/system/System;->-$$Nest$mclearCache(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
