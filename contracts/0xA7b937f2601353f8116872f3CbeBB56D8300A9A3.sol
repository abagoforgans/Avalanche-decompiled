contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address sub_b4ed0b6d;
address storFEDB;

function owner() payable {
    return owner
}

function getRole(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor1[address(arg2)][arg1])
}

function sub_b4ed0b6d(?) payable {
    require calldata.size - 4 >= 32
    return sub_b4ed0b6d[arg1]
}

function sub_f0723d97(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor1[arg1][arg2])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function executor() payable {
    if not storFEDB:
        return 0
    require ext_code.size(storFEDB)
    call storFEDB.currentExecutor() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function giveRole(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        if not storFEDB:
            if msg.sender != 0:
                if storFEDB != msg.sender:
                    revert with 0, 'Roles: caller is not the owner'
        else:
            require ext_code.size(storFEDB)
            call storFEDB.currentExecutor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                if storFEDB != msg.sender:
                    revert with 0, 'Roles: caller is not the owner'
    stor1[address(arg2)][arg1] = 1
}

function removeRole(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        if not storFEDB:
            if msg.sender != 0:
                if storFEDB != msg.sender:
                    revert with 0, 'Roles: caller is not the owner'
        else:
            require ext_code.size(storFEDB)
            call storFEDB.currentExecutor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                if storFEDB != msg.sender:
                    revert with 0, 'Roles: caller is not the owner'
    stor1[address(arg2)][arg1] = 0
}

function setMainCharacter(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        if not storFEDB:
            if msg.sender != 0:
                if storFEDB != msg.sender:
                    revert with 0, 'Roles: caller is not the owner'
        else:
            require ext_code.size(storFEDB)
            call storFEDB.currentExecutor() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                if storFEDB != msg.sender:
                    revert with 0, 'Roles: caller is not the owner'
    sub_b4ed0b6d[arg1] = arg2
}



}
