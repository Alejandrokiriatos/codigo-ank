.class public final synthetic Lorg/apache/cordova/SystemBarPlugin$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/SystemBarPlugin;

.field public final synthetic f$1:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/SystemBarPlugin;Lorg/json/JSONArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/SystemBarPlugin$$ExternalSyntheticLambda2;->f$0:Lorg/apache/cordova/SystemBarPlugin;

    iput-object p2, p0, Lorg/apache/cordova/SystemBarPlugin$$ExternalSyntheticLambda2;->f$1:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/SystemBarPlugin$$ExternalSyntheticLambda2;->f$0:Lorg/apache/cordova/SystemBarPlugin;

    iget-object v1, p0, Lorg/apache/cordova/SystemBarPlugin$$ExternalSyntheticLambda2;->f$1:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/SystemBarPlugin;->lambda$execute$1$org-apache-cordova-SystemBarPlugin(Lorg/json/JSONArray;)V

    return-void
.end method
