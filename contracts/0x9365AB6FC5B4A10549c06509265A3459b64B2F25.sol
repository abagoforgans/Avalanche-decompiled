contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;

function owner() {
    return owner
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.mint(uint16 arg1) with:
       value 15 * 10^18 wei
         gas gas_remaining wei
        args 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f6ee0fb7(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.mint(uint16 arg1) with:
       value 75 * 10^16 wei
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_68c550f4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 9:
        if arg2 != 115:
            if arg2 != 511:
                if arg2 != 106:
                    if arg2 != 108:
                        if arg2 != 607:
                            if arg2 != 1406:
                                if arg2 != 1706:
                                    if arg2 != 1712:
                                        if arg2 != 1905:
                                            if arg2 != 1950:
                                                if arg2 != 1964:
                                                    if arg2 != 2008:
                                                        if arg2 != 2020:
                                                            if arg2 != 2104:
                                                                if arg2 != 2306:
                                                                    if arg2 != 2604:
                                                                        if arg2 != 2806:
                                                                            if arg2 != 3010:
                                                                                if arg2 != 3101:
                                                                                    if arg2 != 8135:
                                                                                        if arg2 != 8365:
                                                                                            if arg2 != 8969:
                                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                            'This contract can transfer only the 20 legendary and the 12 bonus MFTs. All the others MFTs owned by this contract are burned forever.'
    require ext_code.size(stor2)
    call stor2.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
