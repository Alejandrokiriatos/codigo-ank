.class Lcom/foxdebug/system/System$3;
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

.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/foxdebug/system/System$3;->this$0:Lcom/foxdebug/system/System;

    iput-object p2, p0, Lcom/foxdebug/system/System$3;->val$arg1:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/system/System$3;->val$args:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/foxdebug/system/System$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/foxdebug/system/System$3;->this$0:Lcom/foxdebug/system/System;

    iget-object v1, p0, Lcom/foxdebug/system/System$3;->val$arg1:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/system/System$3;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/foxdebug/system/System$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, v2, v3}, Lcom/foxdebug/system/System;->-$$Nest$msetUiTheme(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
