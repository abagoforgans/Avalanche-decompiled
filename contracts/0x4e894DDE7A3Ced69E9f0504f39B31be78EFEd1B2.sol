contract main {




// =====================  Runtime code  =====================


address storeAddress;
address sub_32c3f03cAddress;
address sub_5578f8bbAddress;
address sub_8e07d001Address;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;

function sub_32c3f03c(?) payable {
    return sub_32c3f03cAddress
}

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_5578f8bb(?) payable {
    return sub_5578f8bbAddress
}

function sub_5c63cacb(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_8e07d001(?) payable {
    return sub_8e07d001Address
}

function store() payable {
    return storeAddress
}

function vaults(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getPricePerFullShare(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3f6e3246(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, '_worker must be defined'
    stor6[address(arg1)] = 1
}

function sub_ed137c9a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, '_worker must be defined'
    stor6[address(arg1)] = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    storeAddress = arg1
}

function addToWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'target must be defined'
    stor4[address(arg1)] = 1
}

function removeFromWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'target must be defined'
    stor4[address(arg1)] = 0
}

function sub_5a9a0818(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x776e65772072657761726420666f727761726465722073686f756c64206e6f7420626520656d7074,
                    mem[204 len 24]
    sub_5578f8bbAddress = arg1
}

function sub_c12cb175(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x776e65772072657761726420666f727761726465722073686f756c64206e6f7420626520656d7074,
                    mem[204 len 24]
    sub_8e07d001Address = arg1
}

function sub_fddca7e6(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x776e65772072657761726420666f727761726465722073686f756c64206e6f7420626520656d7074,
                    mem[204 len 24]
    sub_32c3f03cAddress = arg1
}

function setRewardsDistributor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'Vault shouldn't be empty'
    if not stor5[address(arg1)]:
        revert with 0, 'vault should exist'
    require ext_code.size(arg1)
    call arg1.0xd1f5c33b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function salvageStrategy(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x1113ef52 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78ed2e95(?) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new vault shouldn't be empty'
    if stor5[address(arg1)]:
        revert with 0, 'vault already exists'
    if not arg2:
        revert with 0, 'new strategy shouldn't be empty'
    stor5[address(arg1)] = 1
    require ext_code.size(arg1)
    call arg1.0x33a100ca with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xcff757e9 with:
         gas gas_remaining wei
        args 0, arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function salvage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132] = ext_call.return_data[12 len 20]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg2) >> 32
    call arg1.mem[160 len 4] with:
         gas gas_remaining wei
        args arg2, 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, ext_call.return_data[12 len 20], arg2
        if not 0, mem[132 len 28]:
            revert with 0, 32, 42, 0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawAll(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not stor5[address(arg1)]:
        revert with 0, 'vault does not exist'
    require ext_code.size(arg1)
    staticcall arg1.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    else:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    require ext_code.size(arg1)
    call arg1.0x853828b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setStrategy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not stor5[address(arg1)]:
        revert with 0, 'vault does not exist'
    require ext_code.size(arg1)
    staticcall arg1.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg3:
        if not arg4:
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not arg3:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 0 / arg5:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * arg3 / arg3 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg3 / ext_call.return_data[0] > 0 / arg5:
                    revert with 0, 'share price deviation'
        else:
            if 10^18 * arg4 / arg4 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not arg3:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * arg3 / arg3 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg3 / ext_call.return_data[0] > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
    else:
        if not arg4:
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not ext_call.return_data[0]:
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 0 / arg3 > 0 / arg5:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 10^18 * ext_call.return_data[0] / arg3 > 0 / arg5:
                    revert with 0, 'share price deviation'
        else:
            if 10^18 * arg4 / arg4 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg5 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg5
            if not ext_call.return_data[0]:
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 0 / arg3 > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg3
                if 10^18 * ext_call.return_data[0] / arg3 > 10^18 * arg4 / arg5:
                    revert with 0, 'share price deviation'
    require ext_code.size(arg1)
    call arg1.0x33a100ca with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_402cd41b(?) payable {
    require calldata.size - 4 >= 128
    if not stor6[msg.sender]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x6c6f6e6c7920736176657273206f7220676f7665726e616e63652063616e2063616c6c20746869,
                        mem[203 len 25]
    if not stor5[address(arg1)]:
        revert with 0, 'vault does not exist'
    require ext_code.size(arg1)
    staticcall arg1.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not arg2:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if 10^18 * arg2 / ext_call.return_data[0] > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    else:
        if not arg3:
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 0 / arg4:
                    revert with 0, 'share price deviation'
        else:
            if 10^18 * arg3 / arg3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg4 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg4
            if not ext_call.return_data[0]:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 0 / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
            else:
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                if 10^18 * ext_call.return_data[0] / arg2 > 10^18 * arg3 / arg4:
                    revert with 0, 'share price deviation'
    require ext_code.size(arg1)
    staticcall arg1.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x460c65e4 with:
         gas gas_remaining wei
        args sub_32c3f03cAddress, sub_8e07d001Address, sub_5578f8bbAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x4983aecd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0xa8c62e76 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit SharePriceChangeLog(ext_call.return_data[0], ext_call.return_data[0], block.timestamp, arg1, address(ext_call.return_data[0]));
}



}
