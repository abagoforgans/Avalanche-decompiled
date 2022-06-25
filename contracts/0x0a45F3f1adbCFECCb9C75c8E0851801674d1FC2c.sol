contract main {




// =====================  Runtime code  =====================


#
#  - withdrawERC20(address arg1, uint256 arg2)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address adminAddress;
address settingsAddress;
address calculatorAddress;
address tokenAddress;
array of address assets;

function sub_26b3823a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= assets.length:
        revert with 'NH{q', 50
    return assets[arg1]
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function calculator() payable {
    return calculatorAddress
}

function assets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < assets.length
    return assets[arg1]
}

function settings() payable {
    return settingsAddress
}

function assetsLength() payable {
    return assets.length
}

function admin() payable {
    return adminAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = 1
}

function activate() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function setSettings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    settingsAddress = arg1
}

function setCalculator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    calculatorAddress = arg1
}

function addAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    assets.length++
    assets[assets.length] = arg1
}

function removeAsset(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= assets.length:
        revert with 'NH{q', 50
    assets[arg1] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_95e8eff2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(calculatorAddress)
    staticcall calculatorAddress.tokenValue() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.mint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (arg2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
}

function sub_33e0e8d5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(calculatorAddress)
    staticcall calculatorAddress.tokenValue() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.exit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg2 * ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (arg2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 0xa70c3c40a64e6c51999090b65f67d9240000000000000)
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: contract is paused'
    require 0 < assets.length
    idx = 0
    while assets[idx] != arg1:
        if idx == -1:
            revert with 'NH{q', 17
        require idx + 1 < assets.length
        mem[0] = 5
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.mintable() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0xfc0c546a with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg2
    require ext_code.size(calculatorAddress)
    staticcall calculatorAddress.tokenValue() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.mint() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.price() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(arg1)
    staticcall arg1.0xfc0c546a with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(10 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(10 * ceil32(return_data.size)) + 164] = this.address
    mem[(10 * ceil32(return_data.size)) + 196] = arg2
    mem[(10 * ceil32(return_data.size)) + 96] = 100
    mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(10 * ceil32(return_data.size)) + 228] = 32
    mem[(10 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(10 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(10 * ceil32(return_data.size)) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(10 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(10 * ceil32(return_data.size)) + 324] == bool(mem[(10 * ceil32(return_data.size)) + 324])
            if not mem[(10 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args adminAddress, arg2 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: contract is paused'
    require 0 < assets.length
    idx = 0
    while assets[idx] != arg1:
        if idx == -1:
            revert with 'NH{q', 17
        require idx + 1 < assets.length
        mem[0] = 5
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.0x26bfae3e with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg2
    require ext_code.size(calculatorAddress)
    staticcall calculatorAddress.tokenValue() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.exit() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.price() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg2 * ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg2 * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(7 * ceil32(return_data.size)) + 132] = arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xf851a440 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 100] = adminAddress
    mem[(8 * ceil32(return_data.size)) + 132] = arg2 * ext_call.return_data[0] / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args adminAddress, arg2 * ext_call.return_data[0] / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0xfc0c546a with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(10 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(10 * ceil32(return_data.size)) + 164] = arg2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 0xa70c3c40a64e6c51999090b65f67d9240000000000000
    mem[(10 * ceil32(return_data.size)) + 96] = 68
    mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(10 * ceil32(return_data.size)) + 196] = 32
    mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(10 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 0xa70c3c40a64e6c51999090b65f67d9240000000000000, 0
    mem[(10 * ceil32(return_data.size)) + 328] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 0xa70c3c40a64e6c51999090b65f67d9240000000000000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 0xa70c3c40a64e6c51999090b65f67d9240000000000000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
            if not mem[(10 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
