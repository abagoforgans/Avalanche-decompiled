contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address devAddress;
address adminAddress;

function dev() {
    return devAddress
}

function tokenAddress() {
    return tokenAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function calculateCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 10:
        return 10^17
    if arg1 >= 100:
        return 10 * 10^18
    return 10^18
}

function setdev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'only admin!'
    devAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'only admin!'
    adminAddress = arg1
}

function withdraw() {
    if devAddress != msg.sender:
        revert with 0, 'only admin!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw to the owner'
}

function sub_c6999ddb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == uint8(arg2)
    if uint8(arg2) > 500:
        revert with 0, 'Minting amount can't be over 500!'
    if uint8(arg2) < 10:
        if msg.value < 10^17:
            revert with 0, 'Minting fee is lower than price'
        idx = 0
        while uint8(idx) < uint8(arg2):
            _81 = mem[64]
            mem[mem[64]] = 0xd204c45e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 64
            _84 = mem[96]
            mem[mem[64] + 68] = mem[96]
            s = 0
            while s < _84:
                mem[s + mem[64] + 100] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_84) > _84:
                mem[_81 + _84 + 100] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_84) + _81 + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(idx) == 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            continue 
    else:
        if uint8(arg2) >= 100:
            if msg.value < 10 * 10^18:
                revert with 0, 'Minting fee is lower than price'
            idx = 0
            while uint8(idx) < uint8(arg2):
                _79 = mem[64]
                mem[mem[64]] = 0xd204c45e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                _82 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                while s < _82:
                    mem[s + mem[64] + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_82) > _82:
                    mem[_79 + _82 + 100] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_82) + _79 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
        else:
            if msg.value < 10^18:
                revert with 0, 'Minting fee is lower than price'
            idx = 0
            while uint8(idx) < uint8(arg2):
                mem[ceil32(ceil32(arg1.length)) + 97] = 0xd204c45e00000000000000000000000000000000000000000000000000000000
                mem[ceil32(ceil32(arg1.length)) + 101] = msg.sender
                mem[ceil32(ceil32(arg1.length)) + 133] = 64
                _83 = mem[96]
                mem[ceil32(ceil32(arg1.length)) + 165] = mem[96]
                s = 0
                while s < _83:
                    mem[s + mem[64] + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_83) > _83:
                    mem[ceil32(ceil32(arg1.length)) + _83 + 197] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_83) + ceil32(ceil32(arg1.length)) + -mem[64] + 193]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(idx) == 255:
                    revert with 0, 17
                idx = uint8(idx) + 1
                continue 
    call adminAddress with:
       value msg.value / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw to the owner'
    if msg.value < msg.value / 2:
        revert with 0, 17
    call devAddress with:
       value msg.value - (msg.value / 2) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw to the dev'
}



}
