global_settings = {
  default_region = "region1"
  regions = {
    region1 = "eastus2"
  }
}

resource_groups = {
  rg1 = {
    name = "example-function-app-rg1"
  }
}

storage_accounts = {
  sa1 = {
    name                     = "dmhfunctionsapptestsa"
    resource_group_key       = "rg1"
    region                   = "region1"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

app_service_plans = {
  asp1 = {
    name               = "azure-functions-test-service-plan"
    resource_group_key = "rg1"
    region             = "region1"
    kind               = "functionapp"

    sku = {
      tier = "Dynamic"
      size = "Y1"
    }
  }
}

function_apps = {
  faaps1 = {
    name                 = "dmh-test-azure-functions"
    resource_group_key   = "rg1"
    region               = "region1"
    app_service_plan_key = "asp1"
    storage_account_key  = "sa1"
    settings = {
      version = "~3"
    }
  }
}
