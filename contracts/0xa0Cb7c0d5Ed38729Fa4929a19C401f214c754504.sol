contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address owner;
address sub_9eb1442eAddress;
array of struct allocations;
uint256 totalPoints;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function allocations(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allocations.length
    return allocations[arg1].field_0, allocations[arg1].field_256
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function totalPoints() {
    return totalPoints
}

function owner() {
    return owner
}

function sub_9eb1442e(?) {
    return sub_9eb1442eAddress
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
    stor0[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
    stor0[address(arg1)] = 0
}

function sub_8b428b29(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
    sub_9eb1442eAddress = address(arg1)
}

function addAllocation(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
    allocations.length++
    allocations[allocations.length].field_0 = arg1
    storC257[stor3.length] = arg2
    if totalPoints > !arg2:
        revert with 0, 17
    totalPoints += arg2
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
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

function sub_ceb0cc64(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
    idx = 0
    while idx < allocations.length:
        mem[0] = 3
        if allocations[idx].field_0 == address(arg1):
            if idx >= allocations.length:
                revert with 0, 50
            if totalPoints < allocations[idx].field_256:
                revert with 0, 17
            if totalPoints - allocations[idx].field_256 > !arg2:
                revert with 0, 17
            totalPoints = totalPoints - allocations[idx].field_256 + arg2
            if idx >= allocations.length:
                revert with 0, 50
            mem[0] = 3
            allocations[idx].field_256 = arg2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeAllocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not the deployer'
    idx = 0
    while idx < allocations.length:
        mem[0] = 3
        if allocations[idx].field_0 != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= allocations.length:
            revert with 0, 50
        if totalPoints < allocations[idx].field_256:
            revert with 0, 17
        totalPoints -= allocations[idx].field_256
        if allocations.length < 1:
            revert with 0, 17
        if allocations.length - 1 >= allocations.length:
            revert with 0, 50
        if idx >= allocations.length:
            revert with 0, 50
        allocations[idx].field_0 = allocations[allocations.length - 1].field_0
        allocations[idx].field_256 = allocations[allocations.length - 1].field_256
        if not allocations.length:
            revert with 0, 49
        allocations[allocations.length - 1].field_0 = 0
        allocations[allocations.length - 1].field_256 = 0
        allocations.length--
}

function distribute() {
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Administrable: caller is not an admin'
    mem[100] = this.address
    staticcall sub_9eb1442eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < allocations.length:
        mem[0] = 3
        if ext_call.return_data[0] and allocations[idx].field_256 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not totalPoints:
            revert with 0, 18
        mem[mem[64] + 4] = allocations[idx].field_0
        mem[mem[64] + 36] = ext_call.return_data[0] * allocations[idx].field_256 / totalPoints
        call sub_9eb1442eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args allocations[idx].field_0, ext_call.return_data[0] * allocations[idx].field_256 / totalPoints
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == bool(mem[_18])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
