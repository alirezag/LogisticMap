--[[
    Summary: Implements logistic map activaution function of the form: 
    y(x) = a*x*(1-x)
    All modules are trained by backpropagation.

    Author: Alireza Goudarzi
    RIKEN Brain Science Institute
    alireza.goudarzi@riken.jp
    Jun 26, 2017



]]

package = "LogisticMap"
version = "1.0-0"
source = {
   url = "./",
   tag = "v1.0",
}
description = {
   summary = "logistic activation function module for torch nn package.",
   detailed = [[
     Introduces logistic activation function as torch nn module. 
   ]],
   homepage = "https://github.com/alirezag",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "torch >= 7.0",
   "nn >= 1.0",
   "dpnn = scm-1"
}


build = {
   type = "builtin",
   modules = {
      init = "init.lua",
    LogisticMap = "LogisticMap.lua",
      
   },
   copy_directories = { "doc", "test" },
}