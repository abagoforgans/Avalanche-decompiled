contract main {




// =====================  Runtime code  =====================


const PRESALE_TYPEHASH = 0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413


address owner;
mapping of uint8 stor1;
uint256 DOMAIN_SEPARATOR;
address WDCTAddress;

function WDCT() payable {
    return WDCTAddress
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function owner() payable {
    return owner
}

function depositedTxId(bytes20 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(160, 96, arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setWDCT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    WDCTAddress = arg1
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

function deposit(address arg1, uint256 arg2, bytes20 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == Mask(160, 96, arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1[Mask(160, 96, arg3)]:
        revert with 0, 'WDCThandler: txId already used'
    mem[386 len arg4.length] = arg4[all]
    mem[arg4.length + 386] = 0
    if arg4.length == 65:
        if mem[418] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg4.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[418]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[418]) >> 255) + 27) != 27:
        if uint8((bool(mem[418]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xce7f5ceae1079d4b1e3a2ffa3a2ed6aa3b32e463f009e4cceed8d321808bd413, address(arg1), arg2, Mask(160, 96, arg3))), (bool(mem[418]) >> 255) + 27 << 248, mem[386], uint255(mem[418])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if not address(signer):
        revert with 0, 'WDCThandler: invalid signature'
    require ext_code.size(this.address)
    staticcall this.address.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(signer) != ext_call.return_data[12 len 20]:
        revert with 0, 'WDCThandler: invalid signature'
    stor1[Mask(160, 96, arg3)] = 1
    require ext_code.size(WDCTAddress)
    call WDCTAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(address(arg1), arg2);
}



}
