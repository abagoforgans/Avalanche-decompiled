contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
array of address sub_241c57a2;
address harvesterAddress;

function sub_241c57a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_241c57a2.length
    return sub_241c57a2[arg1]
}

function harvester() payable {
    return harvesterAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipPushed(owner, 0);
    owner = 0
}

function setHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    harvesterAddress = arg1
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    sub_241c57a2.length++
    sub_241c57a2[sub_241c57a2.length] = arg1
}

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    if harvesterAddress:
        require msg.sender == harvesterAddress
    require ext_code.size(arg1)
    call arg1.harvest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pullOwnership() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(owner, stor1);
    owner = stor1
}

function remove(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 < sub_241c57a2.length
    require sub_241c57a2[arg2] == arg1
    require sub_241c57a2.length - 1 < sub_241c57a2.length
    require arg2 < sub_241c57a2.length
    sub_241c57a2[arg2] = sub_241c57a2[sub_241c57a2.length]
    require sub_241c57a2.length
    sub_241c57a2[sub_241c57a2.length] = 0
    sub_241c57a2.length--
}

function pushOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(owner, arg1);
    stor1 = arg1
}

function harvestAll() payable {
    if harvesterAddress:
        require msg.sender == harvesterAddress
    idx = 0
    while idx < sub_241c57a2.length:
        mem[0] = 2
        if harvesterAddress:
            require msg.sender == harvesterAddress
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_241c57a2[idx])
        call sub_241c57a2[idx].harvest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
