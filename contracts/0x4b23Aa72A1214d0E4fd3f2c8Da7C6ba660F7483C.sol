contract main {




// =====================  Runtime code  =====================


#
#  - sub_495952f5(?)
#  - sub_b032fff7(?)
#
mapping of uint8 stor0;
mapping of address sub_ffc50594;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor0[address(arg1)])
}

function sub_ffc50594(?) payable {
    require calldata.size - 4 >= 32
    return sub_ffc50594[arg1]
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7450616e676f6c696e4272696467654d6967726174696f6e526f757465723a20556e617574686f72697a65,
                    mem[207 len 21]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6450616e676f6c696e4272696467654d6967726174696f6e526f757465723a20416464726573732030206e6f7420616c6c6f7765,
                    mem[216 len 12]
    if stor0[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7450616e676f6c696e4272696467654d6967726174696f6e526f757465723a20556e617574686f72697a65,
                    mem[207 len 21]
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7350616e676f6c696e4272696467654d6967726174696f6e526f757465723a20596f752063616e27742064656d6f746520796f757273656c,
                    mem[220 len 8]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor0[address(arg1)] = 0
}

function sub_4c389d26(?) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor0[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7450616e676f6c696e4272696467654d6967726174696f6e526f757465723a20556e617574686f72697a65,
                    mem[207 len 21]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7250616e676f6c696e4272696467654d6967726174696f6e526f757465723a20746f6b656e416464726573732030206e6f7420737570706f727465,
                    mem[223 len 5]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x6e50616e676f6c696e4272696467654d6967726174696f6e526f757465723a206d69677261746f72416464726573732030206e6f7420737570706f727465,
                    mem[226 len 2]
    require ext_code.size(arg2)
    staticcall arg2.swapSupply(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x44546865206d69677261746f7220646f65736e27742068617665207377617020737570706c7920666f72207468697320746f6b65,
                    mem[216 len 12]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_ffc50594[address(arg1)] = arg2
}

function sub_f057d237(?) payable {
    require calldata.size - 4 >= 128
    if arg4 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6450616e676f6c696e4272696467654d6967726174696f6e526f757465723a20455850495245,
                    mem[202 len 26]
    if not sub_ffc50594[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6450616e676f6c696e4272696467654d6967726174696f6e526f757465723a206d69677261746f72206e6f7420726567697374657265,
                    mem[218 len 10]
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[352 len 4] = uint32(arg3)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x675472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg3),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x675472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg3),
                        mem[356 len 4]
        if not arg1:
            revert with 0, 
                        32,
                        59,
                        0x7250616e676f6c696e4272696467654d6967726174696f6e526f757465723a20746f6b656e416464726573732030206e6f7420737570706f727465,
                        uint8(arg3),
                        mem[356 len 4]
        require ext_code.size(sub_ffc50594[address(arg1)])
        call sub_ffc50594[address(arg1)].swap(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_ffc50594[address(arg1)])
        staticcall sub_ffc50594[address(arg1)].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != arg3:
            revert with 0, 
                        32,
                        62,
                        0x3050616e676f6c696e4272696467654d6967726174696f6e526f757465723a204469646e2774207969656c642074686520636f727265637420616d6f756e,
                        mem[358 len 2]
        mem[328 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        call sub_ffc50594[address(arg1)] with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[392 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[360]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x675472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x675472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
        if not arg1:
            revert with 0, 
                        32,
                        59,
                        0x7250616e676f6c696e4272696467654d6967726174696f6e526f757465723a20746f6b656e416464726573732030206e6f7420737570706f727465,
                        mem[ceil32(return_data.size) + 356 len 5]
        require ext_code.size(sub_ffc50594[address(arg1)])
        call sub_ffc50594[address(arg1)].swap(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_ffc50594[address(arg1)])
        staticcall sub_ffc50594[address(arg1)].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != arg3:
            revert with 0, 
                        32,
                        62,
                        0x3050616e676f6c696e4272696467654d6967726174696f6e526f757465723a204469646e2774207969656c642074686520636f727265637420616d6f756e,
                        mem[ceil32(return_data.size) + 359 len 2]
        mem[ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        call sub_ffc50594[address(arg1)] with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 224, mem[ceil32(return_data.size) + 393 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 361]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_99a0df82(?) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x6450616e676f6c696e4272696467654d6967726174696f6e526f757465723a206c69717569646974795061697246726f6d20616464726573732030206e6f7420737570706f727465,
                    mem[236 len 24]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x5450616e676f6c696e4272696467654d6967726174696f6e526f757465723a206c697175696469747950616972546f20616464726573732030206e6f7420737570706f727465,
                    mem[234 len 26]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(112, 0, ext_call.return_data[0]):
        if ext_call.return_data[0]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    staticcall arg2.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
                        staticcall arg2.0xd21220a7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.0xd21220a7 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    staticcall arg2.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if 0 / ext_call.return_data[0] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                    mem[200 len 28]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[203 len 25]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[203 len 25]
                    if not ext_call.return_data[50 len 14]:
                        if ext_call.return_data[18 len 14]:
                            if 0 / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                return 0, (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                            if 0 / ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                            mem[200 len 28]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[203 len 25]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[203 len 25]
                            if not ext_call.return_data[18 len 14]:
                                if ext_call.return_data[50 len 14]:
                                    return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[50 len 14]:
                                        return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                               0
                    else:
                        if ext_call.return_data[50 len 14]:
                            if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 0 / ext_call.return_data[0]:
                                revert with 0, 'ds-math-mul-overflow'
                            if ext_call.return_data[18 len 14]:
                                if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                    return 0, 
                                           (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                mem[200 len 28]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if not ext_call.return_data[18 len 14]:
                                    if ext_call.return_data[50 len 14]:
                                        return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                else:
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ext_call.return_data[50 len 14]:
                                            return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                   0
            else:
                if Mask(112, 0, ext_call.return_data[32]):
                    if arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[0]:
                        require ext_code.size(arg2)
                        staticcall arg2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            staticcall arg2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if 0 / ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                            mem[200 len 28]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[203 len 25]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[203 len 25]
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14]:
                                    if 0 / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                        return 0, 
                                               (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                    if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                    mem[200 len 28]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if not ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[50 len 14]:
                                            return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if ext_call.return_data[50 len 14]:
                                                return (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                       0
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 0 / ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            return 0, 
                                                   (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                        if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                        else:
                            staticcall arg2.0xd21220a7 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.0xd21220a7 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg2)
                            staticcall arg2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                mem[200 len 28]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            return 0, 
                                                   (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                        if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 0 / ext_call.return_data[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ext_call.return_data[18 len 14]:
                                            if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                return 0, 
                                                       (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
                            else:
                                if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                mem[200 len 28]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                            return 0, (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                        if 0 / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ext_call.return_data[18 len 14]:
                                            if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                                return 0, 
                                                       (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            if 0 / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
    else:
        if Mask(112, 0, ext_call.return_data[0]):
            if arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if ext_call.return_data[0]:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if ext_call.return_data[0]:
                        require ext_code.size(arg2)
                        staticcall arg2.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                            staticcall arg2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                            mem[200 len 28]
                            if ext_call.return_data[18 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[203 len 25]
                            if ext_call.return_data[50 len 14] <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            39,
                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                            mem[203 len 25]
                            if not ext_call.return_data[50 len 14]:
                                if ext_call.return_data[18 len 14]:
                                    if 0 / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                        return 0, (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                    if 0 / ext_call.return_data[0] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                    mem[200 len 28]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if not ext_call.return_data[18 len 14]:
                                        if ext_call.return_data[50 len 14]:
                                            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                    else:
                                        if ext_call.return_data[18 len 14]:
                                            if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if ext_call.return_data[50 len 14]:
                                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                       0
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if ext_call.return_data[18 len 14]:
                                        if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                            return 0, 
                                                   (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                        if 0 / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                        else:
                            staticcall arg2.0xd21220a7 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.0xd21220a7 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg2)
                            staticcall arg2.getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                mem[200 len 28]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                            return 0, (0 / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                        if 0 / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ext_call.return_data[18 len 14]:
                                            if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= 0 / ext_call.return_data[0]:
                                                return 0, 
                                                       (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            if 0 / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if 0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 0 / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
                            else:
                                if 0 / ext_call.return_data[0] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                mem[200 len 28]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            return 0, 
                                                   (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                        if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 0 / ext_call.return_data[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ext_call.return_data[18 len 14]:
                                            if 0 / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                return 0, 
                                                       (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (0 / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (0 / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
                else:
                    if Mask(112, 0, ext_call.return_data[32]):
                        if arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != arg3:
                            revert with 0, 'ds-math-mul-overflow'
                        if ext_call.return_data[0]:
                            require ext_code.size(arg2)
                            staticcall arg2.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            staticcall arg1.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg2)
                            if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                staticcall arg2.getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                mem[200 len 28]
                                if ext_call.return_data[18 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if ext_call.return_data[50 len 14] <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                39,
                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                mem[203 len 25]
                                if not ext_call.return_data[50 len 14]:
                                    if ext_call.return_data[18 len 14]:
                                        if 0 / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                            return 0, 
                                                   (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                        if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                        mem[200 len 28]
                                        if ext_call.return_data[50 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if ext_call.return_data[18 len 14] <= 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        39,
                                                        0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                        mem[203 len 25]
                                        if not ext_call.return_data[18 len 14]:
                                            if ext_call.return_data[50 len 14]:
                                                return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                        else:
                                            if ext_call.return_data[18 len 14]:
                                                if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    revert with 0, 'ds-math-mul-overflow'
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                           0
                                else:
                                    if ext_call.return_data[50 len 14]:
                                        if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if ext_call.return_data[18 len 14]:
                                            if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                return 0, 
                                                       (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
                            else:
                                staticcall arg2.0xd21220a7 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                staticcall arg1.0xd21220a7 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg2)
                                staticcall arg2.getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
                                    if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                    mem[200 len 28]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if not ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[18 len 14]:
                                            if 0 / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                return 0, 
                                                       (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                            if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if ext_call.return_data[18 len 14]:
                                                if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                    return 0, 
                                                           (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                                mem[200 len 28]
                                                if ext_call.return_data[50 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                39,
                                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[203 len 25]
                                                if ext_call.return_data[18 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                39,
                                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[203 len 25]
                                                if not ext_call.return_data[18 len 14]:
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                                else:
                                                    if ext_call.return_data[18 len 14]:
                                                        if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if ext_call.return_data[50 len 14]:
                                                            return (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                                   0
                                else:
                                    if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                    mem[200 len 28]
                                    if ext_call.return_data[18 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if ext_call.return_data[50 len 14] <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    39,
                                                    0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                    mem[203 len 25]
                                    if not ext_call.return_data[50 len 14]:
                                        if ext_call.return_data[18 len 14]:
                                            if 0 / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                return 0, 
                                                       (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (0 / Mask(112, 0, ext_call.return_data[0]))
                                            if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                            mem[200 len 28]
                                            if ext_call.return_data[50 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if ext_call.return_data[18 len 14] <= 0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            39,
                                                            0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                            mem[203 len 25]
                                            if not ext_call.return_data[18 len 14]:
                                                if ext_call.return_data[50 len 14]:
                                                    return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                            else:
                                                if ext_call.return_data[18 len 14]:
                                                    if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                        revert with 0, 'ds-math-mul-overflow'
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                               0
                                    else:
                                        if ext_call.return_data[50 len 14]:
                                            if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
                                                revert with 0, 'ds-math-mul-overflow'
                                            if ext_call.return_data[18 len 14]:
                                                if arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                    return 0, 
                                                           (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x6650616e676f6c696e4c6962726172793a20494e53554646494349454e545f414d4f554e,
                                                                mem[200 len 28]
                                                if ext_call.return_data[50 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                39,
                                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[203 len 25]
                                                if ext_call.return_data[18 len 14] <= 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                39,
                                                                0x4450616e676f6c696e4c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                                                mem[203 len 25]
                                                if not ext_call.return_data[18 len 14]:
                                                    if ext_call.return_data[50 len 14]:
                                                        return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (0 / ext_call.return_data[50 len 14]), 0
                                                else:
                                                    if ext_call.return_data[18 len 14]:
                                                        if arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]:
                                                            revert with 0, 'ds-math-mul-overflow'
                                                        if ext_call.return_data[50 len 14]:
                                                            return (arg3 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - (arg3 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]), 
                                                                   0
    revert
}



}
