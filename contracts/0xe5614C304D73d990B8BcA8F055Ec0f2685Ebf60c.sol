contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address sub_031d2a60Address;
address sub_28f2642fAddress;
address sub_2eff3776Address;
uint256 poolId;
mapping of struct accounts;

function sub_031d2a60(?) payable {
    return sub_031d2a60Address
}

function sub_28f2642f(?) payable {
    return sub_28f2642fAddress
}

function sub_2eff3776(?) payable {
    return sub_2eff3776Address
}

function poolId() payable {
    return poolId
}

function governance() payable {
    return governanceAddress
}

function accounts(address arg1) payable {
    require calldata.size - 4 >= 32
    return accounts[arg1].field_0, 
           accounts[arg1].field_256,
           accounts[arg1].field_512,
           accounts[arg1].field_768,
           accounts[arg1].field_1024,
           accounts[arg1].field_1280
}

function votes(address arg1) payable {
    require calldata.size - 4 >= 32
    return accounts[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function isFrozen(address arg1) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp < accounts[address(arg1)].field_1280)
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress:
        if governanceAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        52,
                        0x4e4372797374616c5661756c743a3a736574476f7665726e616e63653a20494e53554646494349454e545f5045524d495353494f,
                        mem[216 len 12]
    governanceAddress = arg1
}

function sub_ccfbf6e3(?) payable {
    require calldata.size - 4 >= 32
    s = accounts[address(arg1)].field_1024 + 1 / 2
    t = accounts[address(arg1)].field_1024
    while s < t:
        require s
        s = (accounts[address(arg1)].field_1024 / s) + s / 2
        t = s
        continue 
    if not t:
        return 0
    if 10^9 * t / t != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (10^9 * t)
}

function sub_2c48dc1b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_28f2642fAddress)
    call sub_28f2642fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + accounts[msg.sender].field_0 < accounts[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    accounts[msg.sender].field_0 += arg1
    if arg1 + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    accounts[msg.sender].field_1024 += arg1
}

function freeze(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x774372797374616c5661756c743a3a667265657a653a20494e53554646494349454e545f5045524d495353494f,
                    mem[209 len 19]
    if arg2 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + block.timestamp > accounts[address(arg1)].field_1280:
        if arg2 + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        accounts[address(arg1)].field_1280 = arg2 + block.timestamp
}

function withdrawAll() payable {
    if block.timestamp < accounts[address(msg.sender)].field_1280:
        revert with 0, 'CrystalVault:: FROZEN_VAULT'
    if not accounts[msg.sender].field_256:
        if accounts[msg.sender].field_0:
            accounts[msg.sender].field_256 = 0
            accounts[msg.sender].field_0 = 0
            accounts[msg.sender].field_512 = 0
            accounts[msg.sender].field_768 = 0
            accounts[msg.sender].field_1024 = 0
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, accounts[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require ext_code.size(sub_031d2a60Address)
        call sub_031d2a60Address.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, accounts[msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_031d2a60Address)
        staticcall sub_031d2a60Address.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args poolId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not accounts[msg.sender].field_256:
            if accounts[msg.sender].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[msg.sender].field_512 - accounts[msg.sender].field_768 < -accounts[msg.sender].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if accounts[msg.sender].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_256 = 0
            accounts[msg.sender].field_0 = 0
            accounts[msg.sender].field_512 = 0
            accounts[msg.sender].field_768 = 0
            accounts[msg.sender].field_1024 = 0
            require ext_code.size(sub_2eff3776Address)
            call sub_2eff3776Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, accounts[msg.sender].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, accounts[msg.sender].field_0 + accounts[msg.sender].field_512 - accounts[msg.sender].field_768
        else:
            if ext_call.return_data[96] * accounts[msg.sender].field_256 / accounts[msg.sender].field_256 != ext_call.return_data[96]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if accounts[msg.sender].field_768 > ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[msg.sender].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if accounts[msg.sender].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_256 = 0
            accounts[msg.sender].field_0 = 0
            accounts[msg.sender].field_512 = 0
            accounts[msg.sender].field_768 = 0
            accounts[msg.sender].field_1024 = 0
            require ext_code.size(sub_2eff3776Address)
            call sub_2eff3776Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, accounts[msg.sender].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_28f2642fAddress)
            call sub_28f2642fAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, accounts[msg.sender].field_0 + accounts[msg.sender].field_512 + (ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12) - accounts[msg.sender].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_48119078(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_2eff3776Address)
    call sub_2eff3776Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_031d2a60Address)
    call sub_031d2a60Address.0xe2bbb158 with:
         gas gas_remaining wei
        args poolId, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_031d2a60Address)
    staticcall sub_031d2a60Address.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not accounts[msg.sender].field_256:
        if arg1 + accounts[msg.sender].field_256 < accounts[msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        accounts[msg.sender].field_256 += arg1
        if not arg1 + accounts[msg.sender].field_256:
            accounts[msg.sender].field_768 = 0
        else:
            if (arg1 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / arg1 + accounts[msg.sender].field_256 != ext_call.return_data[96]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            accounts[msg.sender].field_768 = (arg1 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / 10^12
        require ext_code.size(sub_2eff3776Address)
        staticcall sub_2eff3776Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_2eff3776Address)
        staticcall sub_2eff3776Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_1024 += 0 / ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[32]) * arg1 / arg1 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (Mask(112, 0, ext_call.return_data[32]) * arg1 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_1024 += Mask(112, 0, ext_call.return_data[32]) * arg1 / ext_call.return_data[0]
    else:
        if not accounts[msg.sender].field_256:
            if accounts[msg.sender].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -accounts[msg.sender].field_768 + accounts[msg.sender].field_512 < accounts[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_512 -= accounts[msg.sender].field_768
        else:
            if ext_call.return_data[96] * accounts[msg.sender].field_256 / accounts[msg.sender].field_256 != ext_call.return_data[96]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            ext_call.return_data[101 len 27],
                            mem[224 len 4]
            if accounts[msg.sender].field_768 > ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12) - accounts[msg.sender].field_768 + accounts[msg.sender].field_512 < accounts[msg.sender].field_512:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_512 = (ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12) - accounts[msg.sender].field_768 + accounts[msg.sender].field_512
        if arg1 + accounts[msg.sender].field_256 < accounts[msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        accounts[msg.sender].field_256 += arg1
        if not arg1 + accounts[msg.sender].field_256:
            accounts[msg.sender].field_768 = 0
        else:
            if (arg1 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / arg1 + accounts[msg.sender].field_256 != ext_call.return_data[96]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            accounts[msg.sender].field_768 = (arg1 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / 10^12
        require ext_code.size(sub_2eff3776Address)
        staticcall sub_2eff3776Address.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_2eff3776Address)
        staticcall sub_2eff3776Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_1024 += 0 / ext_call.return_data[0]
        else:
            if Mask(112, 0, ext_call.return_data[32]) * arg1 / arg1 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (Mask(112, 0, ext_call.return_data[32]) * arg1 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_1024 += Mask(112, 0, ext_call.return_data[32]) * arg1 / ext_call.return_data[0]
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1:
        require ext_code.size(sub_28f2642fAddress)
        call sub_28f2642fAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 + accounts[msg.sender].field_0 < accounts[msg.sender].field_0:
            revert with 0, 'SafeMath: addition overflow'
        accounts[msg.sender].field_0 += arg1
        if arg1 + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        accounts[msg.sender].field_1024 += arg1
    if arg2:
        require ext_code.size(sub_2eff3776Address)
        call sub_2eff3776Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_031d2a60Address)
        call sub_031d2a60Address.0xe2bbb158 with:
             gas gas_remaining wei
            args poolId, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_031d2a60Address)
        staticcall sub_031d2a60Address.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args poolId
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not accounts[msg.sender].field_256:
            if arg2 + accounts[msg.sender].field_256 < accounts[msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_256 += arg2
            if not arg2 + accounts[msg.sender].field_256:
                accounts[msg.sender].field_768 = 0
            else:
                if (arg2 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / arg2 + accounts[msg.sender].field_256 != ext_call.return_data[96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                accounts[msg.sender].field_768 = (arg2 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / 10^12
            require ext_code.size(sub_2eff3776Address)
            staticcall sub_2eff3776Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_2eff3776Address)
            staticcall sub_2eff3776Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                accounts[msg.sender].field_1024 += 0 / ext_call.return_data[0]
            else:
                if Mask(112, 0, ext_call.return_data[32]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (Mask(112, 0, ext_call.return_data[32]) * arg2 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                accounts[msg.sender].field_1024 += Mask(112, 0, ext_call.return_data[32]) * arg2 / ext_call.return_data[0]
        else:
            if not accounts[msg.sender].field_256:
                if accounts[msg.sender].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -accounts[msg.sender].field_768 + accounts[msg.sender].field_512 < accounts[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                accounts[msg.sender].field_512 -= accounts[msg.sender].field_768
            else:
                if ext_call.return_data[96] * accounts[msg.sender].field_256 / accounts[msg.sender].field_256 != ext_call.return_data[96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if accounts[msg.sender].field_768 > ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12) - accounts[msg.sender].field_768 + accounts[msg.sender].field_512 < accounts[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                accounts[msg.sender].field_512 = (ext_call.return_data[96] * accounts[msg.sender].field_256 / 10^12) - accounts[msg.sender].field_768 + accounts[msg.sender].field_512
            if arg2 + accounts[msg.sender].field_256 < accounts[msg.sender].field_256:
                revert with 0, 'SafeMath: addition overflow'
            accounts[msg.sender].field_256 += arg2
            if not arg2 + accounts[msg.sender].field_256:
                accounts[msg.sender].field_768 = 0
            else:
                if (arg2 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / arg2 + accounts[msg.sender].field_256 != ext_call.return_data[96]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                accounts[msg.sender].field_768 = (arg2 * ext_call.return_data[96]) + (accounts[msg.sender].field_256 * ext_call.return_data[96]) / 10^12
            require ext_code.size(sub_2eff3776Address)
            staticcall sub_2eff3776Address.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(sub_2eff3776Address)
            staticcall sub_2eff3776Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                accounts[msg.sender].field_1024 += 0 / ext_call.return_data[0]
            else:
                if Mask(112, 0, ext_call.return_data[32]) * arg2 / arg2 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (Mask(112, 0, ext_call.return_data[32]) * arg2 / ext_call.return_data[0]) + accounts[msg.sender].field_1024 < accounts[msg.sender].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                accounts[msg.sender].field_1024 += Mask(112, 0, ext_call.return_data[32]) * arg2 / ext_call.return_data[0]
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_031d2a60Address)
    staticcall sub_031d2a60Address.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_2eff3776Address)
    staticcall sub_2eff3776Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_031d2a60Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[64] >= block.number:
        if not accounts[address(arg1)].field_256:
            if accounts[address(arg1)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
        if ext_call.return_data[96] * accounts[address(arg1)].field_256 / accounts[address(arg1)].field_256 != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if accounts[address(arg1)].field_768 > ext_call.return_data[96] * accounts[address(arg1)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if accounts[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (accounts[address(arg1)].field_512 + (ext_call.return_data[96] * accounts[address(arg1)].field_256 / 10^12) - accounts[address(arg1)].field_768)
    if not ext_call.return_data[0]:
        if not accounts[address(arg1)].field_256:
            if accounts[address(arg1)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
        if ext_call.return_data[96] * accounts[address(arg1)].field_256 / accounts[address(arg1)].field_256 != ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[224 len 4]
        if accounts[address(arg1)].field_768 > ext_call.return_data[96] * accounts[address(arg1)].field_256 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if accounts[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (accounts[address(arg1)].field_512 + (ext_call.return_data[96] * accounts[address(arg1)].field_256 / 10^12) - accounts[address(arg1)].field_768)
    require ext_code.size(sub_031d2a60Address)
    staticcall sub_031d2a60Address.getMultiplier(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[64], block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_031d2a60Address)
    staticcall sub_031d2a60Address.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_031d2a60Address)
    staticcall sub_031d2a60Address.0xd9f0abf5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + ext_call.return_data[96] < ext_call.return_data[96]:
                revert with 0, 'SafeMath: addition overflow'
            if not accounts[address(arg1)].field_256:
                if accounts[address(arg1)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
            if (0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / accounts[address(arg1)].field_256 != (0 / ext_call.return_data[0]) + ext_call.return_data[96]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if accounts[address(arg1)].field_768 > (0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12) - accounts[address(arg1)].field_768)
        if 10^12 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^12:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[96] < ext_call.return_data[96]:
            revert with 0, 'SafeMath: addition overflow'
        if not accounts[address(arg1)].field_256:
            if accounts[address(arg1)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
        if (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / accounts[address(arg1)].field_256 != (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[96]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if accounts[address(arg1)].field_768 > (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if accounts[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (accounts[address(arg1)].field_512 + ((10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12) - accounts[address(arg1)].field_768)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + ext_call.return_data[96] < ext_call.return_data[96]:
                revert with 0, 'SafeMath: addition overflow'
            if not accounts[address(arg1)].field_256:
                if accounts[address(arg1)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
            if (0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / accounts[address(arg1)].field_256 != (0 / ext_call.return_data[0]) + ext_call.return_data[96]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if accounts[address(arg1)].field_768 > (0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12) - accounts[address(arg1)].field_768)
        if 10^12 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^12:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[96] < ext_call.return_data[96]:
            revert with 0, 'SafeMath: addition overflow'
        if not accounts[address(arg1)].field_256:
            if accounts[address(arg1)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
        if (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / accounts[address(arg1)].field_256 != (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[96]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if accounts[address(arg1)].field_768 > (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if accounts[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (accounts[address(arg1)].field_512 + ((10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12) - accounts[address(arg1)].field_768)
    if ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 27],
                    mem[224 len 4]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + ext_call.return_data[96] < ext_call.return_data[96]:
            revert with 0, 'SafeMath: addition overflow'
        if not accounts[address(arg1)].field_256:
            if accounts[address(arg1)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
        if (0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / accounts[address(arg1)].field_256 != (0 / ext_call.return_data[0]) + ext_call.return_data[96]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if accounts[address(arg1)].field_768 > (0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if accounts[address(arg1)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (accounts[address(arg1)].field_512 + ((0 / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12) - accounts[address(arg1)].field_768)
    if 10^12 * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[96] < ext_call.return_data[96]:
        revert with 0, 'SafeMath: addition overflow'
    if not accounts[address(arg1)].field_256:
        if accounts[address(arg1)].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768 < -accounts[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return (accounts[address(arg1)].field_512 - accounts[address(arg1)].field_768)
    if (10^12 * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / accounts[address(arg1)].field_256 != (10^12 * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[96]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if accounts[address(arg1)].field_768 > (10^12 * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if accounts[address(arg1)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (accounts[address(arg1)].field_512 + ((10^12 * ext_call.return_data[32] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * accounts[address(arg1)].field_256) + (ext_call.return_data[96] * accounts[address(arg1)].field_256) / 10^12) - accounts[address(arg1)].field_768)
}



}
