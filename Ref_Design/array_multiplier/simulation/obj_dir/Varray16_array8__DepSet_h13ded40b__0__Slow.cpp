// Verilated -*- SystemC -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Varray16.h for the primary calling header

#include "Varray16__pch.h"
#include "Varray16_array8.h"

VL_ATTR_COLD void Varray16_array8___ctor_var_reset(Varray16_array8* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Varray16__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+        Varray16_array8___ctor_var_reset\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->a = VL_RAND_RESET_I(8);
    vlSelf->b = VL_RAND_RESET_I(8);
    vlSelf->c = VL_RAND_RESET_I(16);
    vlSelf->z2__DOT__z1__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z1__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z2__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z2__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z2__DOT__z3__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z3__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z2__DOT__z4__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z4__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z2__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z3__DOT__z1__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z1__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z2__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z2__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z3__DOT__z3__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z3__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z3__DOT__z4__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z4__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z3__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z4__DOT__z1__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z1__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z2__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z2__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z2__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z4__DOT__z3__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z3__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z3__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->z4__DOT__z4__DOT____Vcellout__z1____pinNumber4 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z4__DOT____Vcellinp__z2____pinNumber1 = VL_RAND_RESET_I(1);
    vlSelf->z4__DOT__z4__DOT____VdfgRegularize_h5cbdc991_0_2 = VL_RAND_RESET_I(2);
    vlSelf->__VdfgRegularize_h5bb319d4_0_0 = VL_RAND_RESET_I(6);
    vlSelf->__VdfgRegularize_h5bb319d4_0_5 = VL_RAND_RESET_I(2);
    vlSelf->__VdfgRegularize_h5bb319d4_0_6 = VL_RAND_RESET_I(2);
    vlSelf->__VdfgRegularize_h5bb319d4_0_7 = VL_RAND_RESET_I(2);
    vlSelf->__VdfgRegularize_h5bb319d4_0_8 = VL_RAND_RESET_I(2);
}
