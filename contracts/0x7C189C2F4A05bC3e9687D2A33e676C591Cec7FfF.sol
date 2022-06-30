contract main {




// =====================  Runtime code  =====================


address owner;
array of struct allocations;
uint256 totalPoints;
array of address tokens;

function allocations(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allocations.length
    return allocations[arg1].field_0, allocations[arg1].field_256
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function totalPoints() {
    return totalPoints
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokens.length++
    tokens[tokens.length] = arg1
}

function addAllocation(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    allocations.length++
    allocations[allocations.length].field_0 = arg1
    allocations[allocations.length].field_256 = arg2
    totalPoints += arg2
}

function sub_ceb0cc64(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < allocations.length:
        mem[0] = 1
        if allocations[idx].field_0 == arg1:
            require idx < allocations.length
            totalPoints = totalPoints - allocations[idx].field_256 + arg2
            mem[0] = 1
            allocations[idx].field_256 = arg2
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'external call failed'
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function removeAllocation(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < allocations.length:
        mem[0] = 1
        if allocations[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < allocations.length
        totalPoints -= allocations[idx].field_256
        require allocations.length - 1 < allocations.length
        require idx < allocations.length
        allocations[idx].field_0 = allocations[allocations.length - 1].field_0
        allocations[idx].field_256 = allocations[allocations.length - 1].field_256
        require allocations.length
        allocations[allocations.length - 1].field_0 = 0
        allocations[allocations.length - 1].field_256 = 0
        allocations.length--
}

function distribute() {
    idx = 0
    while idx < tokens.length:
        mem[0] = 3
        mem[100] = this.address
        require ext_code.size(tokens[idx])
        staticcall tokens[idx].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            s = 0
            while s < allocations.length:
                mem[0] = 1
                require totalPoints
                mem[100] = allocations[s].field_0
                mem[132] = ext_call.return_data[0] * allocations[s].field_256 / totalPoints
                require ext_code.size(tokens[idx])
                call tokens[idx].0xa9059cbb with:
                     gas gas_remaining wei
                    args allocations[s].field_0, ext_call.return_data[0] * allocations[s].field_256 / totalPoints
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = s + 1
                continue 
        idx = idx + 1
        continue 
}



}
