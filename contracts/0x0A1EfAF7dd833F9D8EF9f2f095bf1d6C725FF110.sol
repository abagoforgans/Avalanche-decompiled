contract main {




// =====================  Runtime code  =====================


#
#  - sub_1bcd23c8(?)
#  - withdrawToVault(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address treasuryAddress;
address rewardManagerAddress;
address multisigWalletAddress;
mapping of uint256 sub_76c9da9d;
uint256 sub_90d72d31;
uint256 sub_ee8468a9;
bool stor107;
uint256 stor107; offset 1
uint256 sub_f07af20f;
uint256 stor108;
uint256 stor109;
uint256 stor110;
uint256 stor111;
uint32 stor112;
address vaultAddress;
uint256 stor112;
address underlyingAddress;
uint8 stor114;
uint32 stor114;
address stor114; offset 8
address masterChefAddress;
uint256 stor114;
address joeAddress;
address xJoeAddress;
uint256 sub_149cfb14;
uint8 sell;
uint256 sellFloor;
uint256 poolId;
uint32 stor121;
address sub_6f3c38d7Address;
uint256 stor121;

function rewardManager() payable {
    return rewardManagerAddress
}

function sub_149cfb14(?) payable {
    return sub_149cfb14
}

function poolId() payable {
    return poolId
}

function sell() payable {
    return bool(sell)
}

function masterChef() payable {
    return masterChefAddress
}

function xJoe() payable {
    return xJoeAddress
}

function treasury() payable {
    return treasuryAddress
}

function underlying() payable {
    return underlyingAddress
}

function sub_6f3c38d7(?) payable {
    return address(sub_6f3c38d7Address)
}

function sub_76c9da9d(?) payable {
    require calldata.size - 4 >= 32
    return sub_76c9da9d[arg1]
}

function owner() payable {
    return owner
}

function multisigWallet() payable {
    return multisigWalletAddress
}

function sub_90d72d31(?) payable {
    return sub_90d72d31
}

function sellFloor() payable {
    return sellFloor
}

function joe() payable {
    return joeAddress
}

function sub_ee8468a9(?) payable {
    return sub_ee8468a9
}

function sub_f07af20f(?) payable {
    return sub_f07af20f
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x778be007: owner, 0
    owner = 0
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if joeAddress == arg1:
        return True
    return (underlyingAddress == arg1)
}

function setMultisig(address arg1) payable {
    require calldata.size - 4 >= 32
    if multisigWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6c5468652073656e6465722068617320746f20626520746865206d756c74697369672077616c6c65,
                    mem[204 len 24]
    multisigWalletAddress = arg1
}

function sub_f3ef5f18(?) payable {
    require calldata.size - 4 >= 32
    if multisigWalletAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x675468652073656e6465722068617320746f20626520746865206d756c74697369672077616c6c6574206f72206f776e65,
                        mem[213 len 15]
    rewardManagerAddress = arg1
}

function setOnxTreasuryFundAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if multisigWalletAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x675468652073656e6465722068617320746f20626520746865206d756c74697369672077616c6c6574206f72206f776e65,
                        mem[213 len 15]
    treasuryAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x778be007: owner, arg1
    owner = arg1
}

function sub_d95cae2d(?) payable {
    require ext_code.size(xJoeAddress)
    staticcall xJoeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_6f3c38d7Address))
    staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
            gas gas_remaining wei
           args sub_149cfb14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function investedUnderlyingBalance() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not masterChefAddress:
        return ext_call.return_data[0]
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function updateUserRewardDebts(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        sub_76c9da9d[address(arg1)] = 0
    else:
        if sub_90d72d31 * ext_call.return_data[0] / ext_call.return_data[0] != sub_90d72d31:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_76c9da9d[address(arg1)] = sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18
}

function sub_5190edfd(?) payable {
    require calldata.size - 4 >= 64
    if multisigWalletAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x675468652073656e6465722068617320746f20626520746865206d756c74697369672077616c6c6574206f72206f776e65,
                        mem[213 len 15]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x65526577617264206665654d61782073686f756c6420626520626967676572207468616e207a6572,
                    mem[204 len 24]
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x78526577617264206665652063616e277420626520626967676572207468616e206665654d61,
                    mem[202 len 26]
    stor110 = arg1
    stor111 = arg2
}

function setKeepFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if multisigWalletAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x675468652073656e6465722068617320746f20626520746865206d756c74697369672077616c6c6574206f72206f776e65,
                        mem[213 len 15]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x735472656173757279206665654d61782073686f756c6420626520626967676572207468616e207a6572,
                    mem[206 len 22]
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xe05472656173757279206665652063616e277420626520626967676572207468616e206665654d61,
                    mem[204 len 24]
    stor108 = arg1
    stor109 = arg2
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if multisigWalletAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x675468652073656e6465722068617320746f20626520746865206d756c74697369672077616c6c6574206f72206f776e65,
                        mem[213 len 15]
    if joeAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe746f6b656e20697320646566696e6564206173206e6f742073616c76616761626c,
                    mem[198 len 30]
    if underlyingAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe746f6b656e20697320646566696e6564206173206e6f742073616c76616761626c,
                    mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawAllToVault() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    if masterChefAddress:
        require ext_code.size(masterChefAddress)
        staticcall masterChefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0]:
            require ext_code.size(masterChefAddress)
            call masterChefAddress.0x441a3e70 with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor112), uint32(stor112), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(stor112)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor112), uint32(stor112), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor112):
                revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function sub_3ee8893f(?) payable {
    require calldata.size - 4 >= 224
    if uint8(stor0.field_8):
        underlyingAddress = arg3
        address(vaultAddress) = arg4
        sell = 1
        masterChefAddress = arg5
        poolId = arg6
        sub_149cfb14 = arg7
        rewardManagerAddress = arg2
        owner = msg.sender
        emit 0x778be007: 0, msg.sender
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            underlyingAddress = arg3
            address(vaultAddress) = arg4
            sell = 1
            masterChefAddress = arg5
            poolId = arg6
            sub_149cfb14 = arg7
            rewardManagerAddress = arg2
            owner = msg.sender
            emit 0x778be007: 0, msg.sender
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            underlyingAddress = arg3
            address(vaultAddress) = arg4
            sell = 1
            masterChefAddress = arg5
            poolId = arg6
            sub_149cfb14 = arg7
            rewardManagerAddress = arg2
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x778be007: 0, msg.sender
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x778be007: 0, msg.sender
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x778be007: 0, msg.sender
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x778be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    require ext_code.size(arg5)
    staticcall arg5.0x1526fe27 with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if underlyingAddress != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64506f6f6c20496e666f20646f6573206e6f74206d6174636820756e6465726c79696e,
                    ext_call.return_data[103 len 29]
    joeAddress = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    xJoeAddress = 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33
    treasuryAddress = 0x3791ed906660767e7d36885bcfef028e0e0403d3
    address(sub_6f3c38d7Address) = 0xd6a4f121ca35509af06a0be99093d08462f53052
    stor108 = 10
    stor109 = 100
    stor110 = 15
    stor111 = 100
    multisigWalletAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_0ab50b96(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(xJoeAddress)
    staticcall xJoeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_6f3c38d7Address))
    staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
            gas gas_remaining wei
           args sub_149cfb14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] < sub_ee8468a9:
        return 0
    if sub_ee8468a9 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (2 * ext_call.return_data[0]) - sub_ee8468a9:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if sub_76c9da9d[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_76c9da9d[address(arg1)]
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_90d72d31:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76c9da9d[address(arg1)] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)])
    if (2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / (2 * ext_call.return_data[0]) - sub_ee8468a9 != 1000000000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if sub_76c9da9d[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_76c9da9d[address(arg1)]
    if ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / ext_call.return_data[0] != ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]) + sub_90d72d31:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_76c9da9d[address(arg1)] > ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)])
}

function pendingRewardOfUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(xJoeAddress)
    staticcall xJoeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_6f3c38d7Address))
    staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
            gas gas_remaining wei
           args sub_149cfb14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 2 * ext_call.return_data[0] < sub_ee8468a9:
        return 0
    if sub_ee8468a9 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (2 * ext_call.return_data[0]) - sub_ee8468a9:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if sub_76c9da9d[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_76c9da9d[address(arg1)]
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_90d72d31:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_76c9da9d[address(arg1)] > (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)])
    if (2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / (2 * ext_call.return_data[0]) - sub_ee8468a9 != 1000000000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if sub_76c9da9d[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_76c9da9d[address(arg1)]
    if ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / ext_call.return_data[0] != ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]) + sub_90d72d31:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_76c9da9d[address(arg1)] > ((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((2000000000000000000 * 10^18 * ext_call.return_data[0]) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_90d72d31 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)])
}

function updateAccPerShare(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    require ext_code.size(xJoeAddress)
    staticcall xJoeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_6f3c38d7Address))
    staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
            gas gas_remaining wei
           args sub_149cfb14, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    bool(stor107.field_0) = 0
    uint255(stor107.field_1) = uint255(ext_call.return_data[0])
    if not sub_ee8468a9:
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_90d72d31 = 0
        else:
            if sub_ee8468a9 > sub_f07af20f:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_f07af20f - sub_ee8468a9:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
                    revert with 0, 'SafeMath: addition overflow'
                sub_90d72d31 += 0 / ext_call.return_data[0]
            else:
                if (1000000000000000000 * 10^18 * sub_f07af20f) - (1000000000000000000 * 10^18 * sub_ee8468a9) / sub_f07af20f - sub_ee8468a9 != 1000000000000000000 * 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if ((1000000000000000000 * 10^18 * sub_f07af20f) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
                    revert with 0, 'SafeMath: addition overflow'
                sub_90d72d31 += (1000000000000000000 * 10^18 * sub_f07af20f) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]
    else:
        if sub_f07af20f < sub_ee8468a9:
            sub_f07af20f = 0
            sub_ee8468a9 = 0
            sub_90d72d31 = 0
            sub_76c9da9d[address(arg1)] = 0
        else:
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                sub_90d72d31 = 0
            else:
                if sub_ee8468a9 > sub_f07af20f:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_f07af20f - sub_ee8468a9:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_90d72d31 += 0 / ext_call.return_data[0]
                else:
                    if (1000000000000000000 * 10^18 * sub_f07af20f) - (1000000000000000000 * 10^18 * sub_ee8468a9) / sub_f07af20f - sub_ee8468a9 != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if ((1000000000000000000 * 10^18 * sub_f07af20f) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]) + sub_90d72d31 < sub_90d72d31:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_90d72d31 += (1000000000000000000 * 10^18 * sub_f07af20f) - (1000000000000000000 * 10^18 * sub_ee8468a9) / ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        underlyingAddress = arg4
        address(vaultAddress) = arg3
        sell = 1
        uint8(stor114.field_0) = 0
        Mask(152, 0, stor114.field_8) = 0x188bed1968b795d5c9022f6a0bb5931ac4c18f
        poolId = arg5
        sub_149cfb14 = 24
        rewardManagerAddress = arg2
        owner = msg.sender
        emit 0x778be007: 0, msg.sender
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            underlyingAddress = arg4
            address(vaultAddress) = arg3
            sell = 1
            uint8(stor114.field_0) = 0
            Mask(152, 0, stor114.field_8) = 0x188bed1968b795d5c9022f6a0bb5931ac4c18f
            poolId = arg5
            sub_149cfb14 = 24
            rewardManagerAddress = arg2
            owner = msg.sender
            emit 0x778be007: 0, msg.sender
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                underlyingAddress = arg4
                address(vaultAddress) = arg3
                sell = 1
                uint8(stor114.field_0) = 0
                Mask(152, 0, stor114.field_8) = 0x188bed1968b795d5c9022f6a0bb5931ac4c18f
                poolId = arg5
                sub_149cfb14 = 24
                rewardManagerAddress = arg2
                owner = msg.sender
                emit 0x778be007: 0, msg.sender
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                underlyingAddress = arg4
                address(vaultAddress) = arg3
                sell = 1
                uint8(stor114.field_0) = 0
                Mask(152, 0, stor114.field_8) = 0x188bed1968b795d5c9022f6a0bb5931ac4c18f
                poolId = arg5
                sub_149cfb14 = 24
                rewardManagerAddress = arg2
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x778be007: 0, msg.sender
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x778be007: 0, msg.sender
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x74496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit 0x778be007: 0, msg.sender
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            owner = msg.sender
                            emit 0x778be007: 0, msg.sender
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
    require ext_code.size(0x188bed1968b795d5c9022f6a0bb5931ac4c18f00)
    staticcall 0x188bed1968b795d5c9022f6a0bb5931ac4c18f00.0x1526fe27 with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if underlyingAddress != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64506f6f6c20496e666f20646f6573206e6f74206d6174636820756e6465726c79696e,
                    ext_call.return_data[103 len 29]
    joeAddress = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    xJoeAddress = 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33
    treasuryAddress = 0x3791ed906660767e7d36885bcfef028e0e0403d3
    address(sub_6f3c38d7Address) = 0xd6a4f121ca35509af06a0be99093d08462f53052
    stor108 = 10
    stor109 = 100
    stor110 = 15
    stor111 = 100
    multisigWalletAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_fddc3cfd(?) payable {
    require ext_code.size(xJoeAddress)
    staticcall xJoeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(sub_6f3c38d7Address))
        call address(sub_6f3c38d7Address).0xe2bbb158 with:
             gas gas_remaining wei
            args sub_149cfb14, ext_call.return_data[0]
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(xJoeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor121), uint32(stor121), 0
        mem[324 len 0] = 0
        call xJoeAddress with:
           funct uint32(stor121)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor121), uint32(stor121), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor121), uint32(stor121), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor121):
                revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(xJoeAddress)
                staticcall xJoeAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(sub_6f3c38d7Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(xJoeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, address(sub_6f3c38d7Address), ext_call.return_data[0 len 28]
            call xJoeAddress with:
               funct uint32(stor121)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor121), uint32(stor121), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor121):
                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(sub_6f3c38d7Address))
            call address(sub_6f3c38d7Address).0xe2bbb158 with:
                 gas gas_remaining wei
                args sub_149cfb14, ext_call.return_data[0]
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
                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(xJoeAddress)
                staticcall xJoeAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(sub_6f3c38d7Address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(xJoeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(sub_6f3c38d7Address), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call xJoeAddress with:
               funct uint32(stor121)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor121), uint32(stor121), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor121):
                    revert with 0, 
                                32,
                                42,
                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(address(sub_6f3c38d7Address))
                call address(sub_6f3c38d7Address).0xe2bbb158 with:
                     gas gas_remaining wei
                    args sub_149cfb14, ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(sub_6f3c38d7Address))
                call address(sub_6f3c38d7Address).0xe2bbb158 with:
                     gas gas_remaining wei
                    args sub_149cfb14, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c5d41f62(?) payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(masterChefAddress)
        call masterChefAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(underlyingAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0), uint32(stor114.field_0), 0
        mem[324 len 0] = 0
        call underlyingAddress with:
           funct uint32(stor114.field_0)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0), uint32(stor114.field_0), 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0), uint32(stor114.field_0), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0):
                revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, masterChefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, masterChefAddress, ext_call.return_data[0 len 28]
            call underlyingAddress with:
               funct uint32(stor114.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0), uint32(stor114.field_0), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0):
                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(masterChefAddress)
            call masterChefAddress.0xe2bbb158 with:
                 gas gas_remaining wei
                args poolId, ext_call.return_data[0]
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
                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, masterChefAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, masterChefAddress, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call underlyingAddress with:
               funct uint32(stor114.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0), uint32(stor114.field_0), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor114.field_0):
                    revert with 0, 
                                32,
                                42,
                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(masterChefAddress)
                call masterChefAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(masterChefAddress)
                call masterChefAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args poolId, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawReward(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, 'Not a vault'
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < sub_76c9da9d[address(arg1)]:
            require ext_code.size(xJoeAddress)
            staticcall xJoeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_6f3c38d7Address))
                staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
                        gas gas_remaining wei
                       args sub_149cfb14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_6f3c38d7Address))
                if ext_call.return_data[0] < -ext_call.return_data[0]:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, ext_call.return_data[0]
                else:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, -ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(xJoeAddress)
                staticcall xJoeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    if ext_call.return_data[0] > 0:
                        if sub_f07af20f > ext_call.return_data[0]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(xJoeAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[324 len 0] = 0
                            call xJoeAddress with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_f07af20f:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_ee8468a9 = sub_f07af20f - ext_call.return_data[0]
        else:
            if sub_76c9da9d[address(arg1)] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(xJoeAddress)
            staticcall xJoeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= -sub_76c9da9d[address(arg1)]:
                if -sub_76c9da9d[address(arg1)] > 0:
                    if sub_f07af20f > -sub_76c9da9d[address(arg1)]:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(xJoeAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, -sub_76c9da9d[address(arg1)]) >> 32
                        mem[324 len 0] = 0
                        call xJoeAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, -sub_76c9da9d[address(arg1)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, -sub_76c9da9d[address(arg1)]
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if -sub_76c9da9d[address(arg1)] > sub_f07af20f:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_ee8468a9 = sub_f07af20f + sub_76c9da9d[address(arg1)]
            else:
                if ext_call.return_data[0] > -sub_76c9da9d[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_6f3c38d7Address))
                staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
                        gas gas_remaining wei
                       args sub_149cfb14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_6f3c38d7Address))
                if ext_call.return_data[0] < -sub_76c9da9d[address(arg1)] - ext_call.return_data[0]:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, ext_call.return_data[0]
                else:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, -sub_76c9da9d[address(arg1)] - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(xJoeAddress)
                staticcall xJoeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= -sub_76c9da9d[address(arg1)]:
                    if -sub_76c9da9d[address(arg1)] > 0:
                        if sub_f07af20f > -sub_76c9da9d[address(arg1)]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(xJoeAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, -sub_76c9da9d[address(arg1)]) >> 32
                            mem[324 len 0] = 0
                            call xJoeAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, -sub_76c9da9d[address(arg1)]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, -sub_76c9da9d[address(arg1)]
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if -sub_76c9da9d[address(arg1)] > sub_f07af20f:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_ee8468a9 = sub_f07af20f + sub_76c9da9d[address(arg1)]
                else:
                    if ext_call.return_data[0] > 0:
                        if sub_f07af20f > ext_call.return_data[0]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(xJoeAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[324 len 0] = 0
                            call xJoeAddress with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_f07af20f:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_ee8468a9 = sub_f07af20f - ext_call.return_data[0]
    else:
        if sub_90d72d31 * ext_call.return_data[0] / ext_call.return_data[0] != sub_90d72d31:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18 < sub_76c9da9d[address(arg1)]:
            require ext_code.size(xJoeAddress)
            staticcall xJoeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_6f3c38d7Address))
                staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
                        gas gas_remaining wei
                       args sub_149cfb14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_6f3c38d7Address))
                if ext_call.return_data[0] < -ext_call.return_data[0]:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, ext_call.return_data[0]
                else:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, -ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(xJoeAddress)
                staticcall xJoeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    if ext_call.return_data[0] > 0:
                        if sub_f07af20f > ext_call.return_data[0]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(xJoeAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[324 len 0] = 0
                            call xJoeAddress with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_f07af20f:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_ee8468a9 = sub_f07af20f - ext_call.return_data[0]
        else:
            if sub_76c9da9d[address(arg1)] > sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(xJoeAddress)
            staticcall xJoeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]:
                if (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)] > 0:
                    if sub_f07af20f > (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(xJoeAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]) >> 32
                        mem[324 len 0] = 0
                        call xJoeAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            address(arg1) << 64,
                                            0,
                                            (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        if (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)] > sub_f07af20f:
                            revert with 0, 'SafeMath: subtraction overflow'
                        sub_ee8468a9 = sub_f07af20f - (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) + sub_76c9da9d[address(arg1)]
            else:
                if ext_call.return_data[0] > (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_6f3c38d7Address))
                staticcall address(sub_6f3c38d7Address).0x93f1a40b with:
                        gas gas_remaining wei
                       args sub_149cfb14, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_6f3c38d7Address))
                if ext_call.return_data[0] < (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)] - ext_call.return_data[0]:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, ext_call.return_data[0]
                else:
                    call address(sub_6f3c38d7Address).0x441a3e70 with:
                         gas gas_remaining wei
                        args sub_149cfb14, (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)] - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(xJoeAddress)
                staticcall xJoeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]:
                    if (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)] > 0:
                        if sub_f07af20f > (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(xJoeAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]) >> 32
                            mem[324 len 0] = 0
                            call xJoeAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]) << 224, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(arg1) << 64,
                                                0,
                                                (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)]
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) - sub_76c9da9d[address(arg1)] > sub_f07af20f:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_ee8468a9 = sub_f07af20f - (sub_90d72d31 * ext_call.return_data[0] / 1000000000000000000 * 10^18) + sub_76c9da9d[address(arg1)]
                else:
                    if ext_call.return_data[0] > 0:
                        if sub_f07af20f > ext_call.return_data[0]:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6f416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(xJoeAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                            mem[324 len 0] = 0
                            call xJoeAddress with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                    revert with 0, 32, 42, 0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x785361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            if ext_call.return_data[0] > sub_f07af20f:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_ee8468a9 = sub_f07af20f - ext_call.return_data[0]
}



}
