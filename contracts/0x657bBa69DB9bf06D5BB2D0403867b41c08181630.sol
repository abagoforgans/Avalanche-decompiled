contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint8 productID; offset 160
address sub_dc3aaab5Address;
array of struct tokensUpForStaking;
array of struct allFarmingContracts;
uint256 totalStakingContracts;

function getTokenAddress() {
    return tokenAddress
}

function tokensUpForStaking(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < tokensUpForStaking[arg1].field_0
    return tokensUpForStaking[arg1][arg2].field_0
}

function allFarmingContracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allFarmingContracts.length
    return allFarmingContracts[arg1].field_0
}

function owner() {
    return owner
}

function totalStakingContracts() {
    return totalStakingContracts
}

function sub_dc3aaab5(?) {
    return sub_dc3aaab5Address
}

function productID() {
    return productID
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_9e9f695d(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    productID = uint8(arg1)
}

function sub_4bc10ccb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = address(arg1)
}

function sub_7c0bf7bb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dc3aaab5Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAllFarmingContracts() {
    mem[64] = (32 * allFarmingContracts.length) + 128
    mem[96] = allFarmingContracts.length
    if not allFarmingContracts.length:
        mem[(32 * allFarmingContracts.length) + 128] = 32
        mem[(32 * allFarmingContracts.length) + 160] = allFarmingContracts.length
        idx = 0
        s = (32 * allFarmingContracts.length) + 192
        t = 128
        while idx < allFarmingContracts.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * allFarmingContracts.length) + 128
           len (96 * allFarmingContracts.length) + 64
    mem[128] = address(allFarmingContracts.field_0)
    idx = 128
    s = 0
    while (32 * allFarmingContracts.length) + 96 > idx:
        mem[idx + 32] = allFarmingContracts[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allFarmingContracts.length) + 128] = 32
    mem[(32 * allFarmingContracts.length) + 160] = allFarmingContracts.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < allFarmingContracts.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * allFarmingContracts.length) + -mem[64] + 192
}

function removeTokenContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.tokenOwner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'user must be the original token owner to remove tokens'
    require ext_code.size(arg1)
    staticcall arg1.getLockedUntilDate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= ext_call.return_data[0]:
        revert with 0, 'it must be after the locked time the user originally configured and not locked forever'
    require ext_code.size(arg1)
    staticcall arg1.getLockedUntilDate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'it must be after the locked time the user originally configured and not locked forever'
    require ext_code.size(arg1)
    call arg1.removeStakeableTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalStakingContracts:
        revert with 0, 17
    totalStakingContracts--
}

function getTokensForStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * tokensUpForStaking[address(arg1)].field_0) + 128
    mem[96] = tokensUpForStaking[address(arg1)].field_0
    if not tokensUpForStaking[address(arg1)].field_0:
        mem[(32 * tokensUpForStaking[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokensUpForStaking[address(arg1)].field_0) + 160] = tokensUpForStaking[address(arg1)].field_0
        idx = 0
        s = (32 * tokensUpForStaking[address(arg1)].field_0) + 192
        t = 128
        while idx < tokensUpForStaking[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * tokensUpForStaking[address(arg1)].field_0) + 128
           len (96 * tokensUpForStaking[address(arg1)].field_0) + 64
    mem[128] = tokensUpForStaking[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokensUpForStaking[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokensUpForStaking[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokensUpForStaking[address(arg1)].field_0) + 128] = 32
    mem[(32 * tokensUpForStaking[address(arg1)].field_0) + 160] = tokensUpForStaking[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < tokensUpForStaking[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * tokensUpForStaking[address(arg1)].field_0) + -mem[64] + 192
}

function createNewTokenContract(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, bool arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg7 == arg7
    if msg.value < 0:
        revert with 0, 17
    require ext_code.size(sub_dc3aaab5Address)
    call sub_dc3aaab5Address.0xd9e30e55 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender, productID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        create contract with 0 wei
                        code: code.data[5290 len 10290], 320, 384, arg3, address(arg1), address(arg2), msg.sender, arg4, arg5, arg6, arg7, 26, 'Moontography Staking Token', 5, 0x734f4b4c47000000000000000000000000000000000000000000000000000000
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        allFarmingContracts.length++
        allFarmingContracts[allFarmingContracts.length].field_0 = address(create.new_address)
        tokensUpForStaking[address(arg2)].field_0++
        tokensUpForStaking[address(arg2)][tokensUpForStaking[address(arg2)].field_0].field_0 = address(create.new_address)
        if totalStakingContracts == -1:
            revert with 0, 17
        totalStakingContracts++
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(create.new_address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 <= ext_call.return_data[0]:
            if arg3 != arg3:
                require ext_code.size(address(create.new_address))
                call address(create.new_address).updateSupply(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 != ext_call.return_data[0]:
                require ext_code.size(address(create.new_address))
                call address(create.new_address).updateSupply(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        create contract with 0 wei
                        code: code.data[5290 len 10290], 320, 384, ext_call.return_data[0], address(arg1), address(arg2), msg.sender, arg4, arg5, arg6, arg7, 26, 'Moontography Staking Token', 5, 0x734f4b4c47000000000000000000000000000000000000000000000000000000
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        allFarmingContracts.length++
        allFarmingContracts[allFarmingContracts.length].field_0 = address(create.new_address)
        tokensUpForStaking[address(arg2)].field_0++
        tokensUpForStaking[address(arg2)][tokensUpForStaking[address(arg2)].field_0].field_0 = address(create.new_address)
        if totalStakingContracts == -1:
            revert with 0, 17
        totalStakingContracts++
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(create.new_address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        if ext_call.return_data[0] != ext_call.return_data[0]:
            require ext_code.size(address(create.new_address))
            call address(create.new_address).updateSupply(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
