contract main {




// =====================  Runtime code  =====================


#
#  - sub_01183203(?)
#  - initNewRound(uint256 arg1, uint256 arg2, uint256 arg3)
#  - depositOnBehalf(address arg1, uint256 arg2)
#  - withdraw()
#  - sub_43c9e535(?)
#  - sub_759947c9(?)
#  - initWithdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
uint256 epoch;
uint256 stor1; offset 32
uint256 expiry;
uint256 START_TIME;
uint256 PERIOD;
address sub_9817299eAddress;
array of struct stor5;
address sub_e4e06008Address;
uint32 stor7;
address sub_3315b2f3Address;
uint256 stor7;
uint32 stor8;
address OWNER;
uint256 stor8;
uint256 sub_c7168c95;
uint256 sub_df952b39;
address sub_31eb318aAddress;
uint32 stor12;
address sub_cf7eb9a1Address;
mapping of uint256 sub_9498be18;
mapping of uint256 sub_c3f31bf1;
mapping of uint256 sub_c43a43e8;
mapping of uint256 sub_e24f97a3;
mapping of uint256 sub_203960cc;
mapping of uint256 sub_624e9dbb;
mapping of uint256 sub_ff07cc57;
mapping of uint256 sub_ee088744;
mapping of uint256 sub_48478029;
mapping of uint256 sub_83cd45f2;
mapping of uint256 sub_43139309;
mapping of uint256 sub_b2d19dae;
mapping of uint256 sub_8d44c8f3;
mapping of uint256 sub_c5e3fbac;
mapping of uint256 sub_c8cf78e3;
mapping of uint256 sub_baba6a90;
mapping of uint256 sub_a7f4f6b7;

function OWNER() payable {
    return address(OWNER)
}

function sub_203960cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_203960cc[arg1]
}

function sub_31eb318a(?) payable {
    return sub_31eb318aAddress
}

function sub_3315b2f3(?) payable {
    return address(sub_3315b2f3Address)
}

function sub_43139309(?) payable {
    require calldata.size - 4 >= 32
    return sub_43139309[arg1]
}

function sub_48478029(?) payable {
    require calldata.size - 4 >= 32
    return sub_48478029[arg1]
}

function sub_624e9dbb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_624e9dbb[arg1]
}

function sub_83cd45f2(?) payable {
    require calldata.size - 4 >= 32
    return sub_83cd45f2[arg1]
}

function sub_8d44c8f3(?) payable {
    require calldata.size - 4 >= 32
    return sub_8d44c8f3[arg1]
}

function epoch() payable {
    return epoch
}

function sub_9498be18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9498be18[arg1]
}

function sub_9817299e(?) payable {
    return sub_9817299eAddress
}

function sub_a7f4f6b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a7f4f6b7[arg1]
}

function sub_b2d19dae(?) payable {
    require calldata.size - 4 >= 32
    return sub_b2d19dae[arg1]
}

function PERIOD() payable {
    return PERIOD
}

function sub_baba6a90(?) payable {
    require calldata.size - 4 >= 32
    return sub_baba6a90[arg1]
}

function sub_c3f31bf1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c3f31bf1[arg1]
}

function sub_c43a43e8(?) payable {
    require calldata.size - 4 >= 32
    return sub_c43a43e8[arg1]
}

function sub_c5e3fbac(?) payable {
    require calldata.size - 4 >= 32
    return sub_c5e3fbac[arg1]
}

function sub_c7168c95(?) payable {
    return sub_c7168c95
}

function sub_c8cf78e3(?) payable {
    require calldata.size - 4 >= 32
    return sub_c8cf78e3[arg1]
}

function sub_cf7eb9a1(?) payable {
    return address(sub_cf7eb9a1Address)
}

function START_TIME() payable {
    return START_TIME
}

function sub_df952b39(?) payable {
    return sub_df952b39
}

function expiry() payable {
    return expiry
}

function sub_e24f97a3(?) payable {
    require calldata.size - 4 >= 32
    return sub_e24f97a3[arg1]
}

function sub_e4e06008(?) payable {
    return sub_e4e06008Address
}

function sub_ee088744(?) payable {
    require calldata.size - 4 >= 32
    return sub_ee088744[arg1]
}

function sub_ff07cc57(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ff07cc57[arg1]
}

function _fallback() payable {
    revert
}

function setExpiry(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(OWNER) != msg.sender:
        revert with 0, 'Not Owner'
    expiry = arg1
}

function setMaxCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(OWNER) != msg.sender:
        revert with 0, 'Not Owner'
    sub_df952b39 = arg1
}

function setPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(OWNER) != msg.sender:
        revert with 0, 'Not Owner'
    sub_31eb318aAddress = arg1
}

function setMaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(OWNER) != msg.sender:
        revert with 0, 'Not Owner'
    address(sub_3315b2f3Address) = arg1
}

function sub_8232e06e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 and PERIOD > -1 / arg1:
        revert with 0, 17
    if arg1 * PERIOD > !START_TIME:
        revert with 0, 17
    if (arg1 * PERIOD) + START_TIME > !PERIOD:
        revert with 0, 17
    return ((arg1 * PERIOD) + START_TIME + PERIOD)
}

function emergencyWithdraw() payable {
    if address(OWNER) != msg.sender:
        revert with 0, 'Not Owner'
    mem[100] = this.address
    require ext_code.size(sub_9817299eAddress)
    staticcall sub_9817299eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(OWNER)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor8)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(sub_9817299eAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_9817299eAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_89c47789(?) payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_9d02ccbe(?) payable {
    if 3600 > !expiry:
        revert with 0, 17
    if block.timestamp <= expiry + 3600:
        revert with 0, 'Allowed 1 hour after expiry'
    mem[100] = address(sub_cf7eb9a1Address)
    require ext_code.size(sub_31eb318aAddress)
    staticcall sub_31eb318aAddress.0x426a8109 with:
            gas gas_remaining wei
           args address(sub_cf7eb9a1Address)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if expiry < expiry:
        revert with 0, 'Not Expired'
    if block.timestamp < expiry:
        revert with 0, 'Not Expired'
    if expiry <= 0:
        revert with 0, 'Round not init'
    if not sub_43139309[stor0]:
        if expiry > 0:
            if ext_call.return_data[0] < sub_8d44c8f3[stor0]:
                if sub_8d44c8f3[stor0] < ext_call.return_data[0]:
                    revert with 0, 17
                if sub_e24f97a3[stor0] and sub_8d44c8f3[stor0] - ext_call.return_data[0] > -1 / sub_e24f97a3[stor0]:
                    revert with 0, 17
                if not sub_8d44c8f3[stor0]:
                    revert with 0, 18
                sub_43139309[stor0] = (sub_8d44c8f3[stor0] * sub_e24f97a3[stor0]) - (ext_call.return_data[0] * sub_e24f97a3[stor0]) / sub_8d44c8f3[stor0]
            if sub_e24f97a3[stor0] > !sub_83cd45f2[stor0]:
                revert with 0, 17
            if sub_e24f97a3[stor0] + sub_83cd45f2[stor0] < sub_43139309[stor0]:
                revert with 0, 17
            if 1 > !epoch:
                revert with 0, 17
            if sub_ee088744[stor0 + 1] and sub_e24f97a3[stor0] + sub_83cd45f2[stor0] - sub_43139309[stor0] > -1 / sub_ee088744[stor0 + 1]:
                revert with 0, 17
            if not sub_e24f97a3[stor0]:
                revert with 0, 18
            if 1 > !epoch:
                revert with 0, 17
            sub_48478029[stor0 + 1] = (sub_e24f97a3[stor0] * sub_ee088744[stor0 + 1]) + (sub_83cd45f2[stor0] * sub_ee088744[stor0 + 1]) - (sub_43139309[stor0] * sub_ee088744[stor0 + 1]) / sub_e24f97a3[stor0]
            if sub_baba6a90[stor0] and sub_e24f97a3[stor0] + sub_83cd45f2[stor0] - sub_43139309[stor0] > -1 / sub_baba6a90[stor0]:
                revert with 0, 17
            if not sub_e24f97a3[stor0]:
                revert with 0, 18
            sub_baba6a90[stor0] = (sub_e24f97a3[stor0] * sub_baba6a90[stor0]) + (sub_83cd45f2[stor0] * sub_baba6a90[stor0]) - (sub_43139309[stor0] * sub_baba6a90[stor0]) / sub_e24f97a3[stor0]
            sub_a7f4f6b7[this.address] = sub_baba6a90[stor0]
            sub_c5e3fbac[stor0] = ext_call.return_data[0]
            sub_c8cf78e3[stor0] = expiry
            expiry = 0
            mem[ceil32(return_data.size) + 132] = address(sub_3315b2f3Address)
            mem[ceil32(return_data.size) + 164] = sub_43139309[stor0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor7)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_9817299eAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), sub_43139309[stor0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call sub_9817299eAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), sub_43139309[stor0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), sub_43139309[stor0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12), mem[132 len 28] == bool(uint32(stor12), mem[132 len 28])
                    if not uint32(stor12), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_9b72c0da(?) payable {
    mem[100] = address(sub_cf7eb9a1Address)
    mem[132] = expiry
    require ext_code.size(sub_31eb318aAddress)
    staticcall sub_31eb318aAddress.0x49fdb9d7 with:
            gas gas_remaining wei
           args address(sub_cf7eb9a1Address), expiry
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_cf7eb9a1Address))
    staticcall address(sub_cf7eb9a1Address).latestTimestamp() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < expiry:
        revert with 0, 'Not Expired'
    if block.timestamp < expiry:
        revert with 0, 'Not Expired'
    if expiry <= 0:
        revert with 0, 'Round not init'
    if not sub_43139309[stor0]:
        if expiry > 0:
            if ext_call.return_data[0] / 100 < sub_8d44c8f3[stor0]:
                if sub_8d44c8f3[stor0] < ext_call.return_data[0] / 100:
                    revert with 0, 17
                if sub_e24f97a3[stor0] and sub_8d44c8f3[stor0] - (ext_call.return_data[0] / 100) > -1 / sub_e24f97a3[stor0]:
                    revert with 0, 17
                if not sub_8d44c8f3[stor0]:
                    revert with 0, 18
                sub_43139309[stor0] = (sub_8d44c8f3[stor0] * sub_e24f97a3[stor0]) - (ext_call.return_data[0] / 100 * sub_e24f97a3[stor0]) / sub_8d44c8f3[stor0]
            if sub_e24f97a3[stor0] > !sub_83cd45f2[stor0]:
                revert with 0, 17
            if sub_e24f97a3[stor0] + sub_83cd45f2[stor0] < sub_43139309[stor0]:
                revert with 0, 17
            if 1 > !epoch:
                revert with 0, 17
            if sub_ee088744[stor0 + 1] and sub_e24f97a3[stor0] + sub_83cd45f2[stor0] - sub_43139309[stor0] > -1 / sub_ee088744[stor0 + 1]:
                revert with 0, 17
            if not sub_e24f97a3[stor0]:
                revert with 0, 18
            if 1 > !epoch:
                revert with 0, 17
            sub_48478029[stor0 + 1] = (sub_e24f97a3[stor0] * sub_ee088744[stor0 + 1]) + (sub_83cd45f2[stor0] * sub_ee088744[stor0 + 1]) - (sub_43139309[stor0] * sub_ee088744[stor0 + 1]) / sub_e24f97a3[stor0]
            if sub_baba6a90[stor0] and sub_e24f97a3[stor0] + sub_83cd45f2[stor0] - sub_43139309[stor0] > -1 / sub_baba6a90[stor0]:
                revert with 0, 17
            if not sub_e24f97a3[stor0]:
                revert with 0, 18
            sub_baba6a90[stor0] = (sub_e24f97a3[stor0] * sub_baba6a90[stor0]) + (sub_83cd45f2[stor0] * sub_baba6a90[stor0]) - (sub_43139309[stor0] * sub_baba6a90[stor0]) / sub_e24f97a3[stor0]
            sub_a7f4f6b7[this.address] = sub_baba6a90[stor0]
            sub_c5e3fbac[stor0] = ext_call.return_data[0] / 100
            sub_c8cf78e3[stor0] = ext_call.return_data[0]
            expiry = 0
            mem[(2 * ceil32(return_data.size)) + 132] = address(sub_3315b2f3Address)
            mem[(2 * ceil32(return_data.size)) + 164] = sub_43139309[stor0]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor7)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_9817299eAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), sub_43139309[stor0], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call sub_9817299eAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), sub_43139309[stor0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), sub_43139309[stor0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor12), stor1 == bool(uint32(stor12), stor1)
                    if not uint32(stor12), stor1:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
