contract main {




// =====================  Runtime code  =====================


const name = 'Onepiece.ERC2612Verifier', 0

const PERMIT_TYPEHASH = 0xd29eae1810f9a3f065590ccfa473d6fdb29545b7a5e09c439cc6b0552ad6ed86


uint256 stor0;
mapping of uint256 nonces;
mapping of uint256 sub_8ff4b029;

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function sub_8ff4b029(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_8ff4b029[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approvals(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_8ff4b029[address(arg1)][address(arg2)], 0
}

function sub_f32cb1e7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if block.timestamp > sub_8ff4b029[address(arg1)][address(arg2)]:
        return 0
    return 1
}

function revoke(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not the owner of the address'
    sub_8ff4b029[address(arg1)][address(arg2)] = 0
    emit 0x8bdc1f3f: address(arg1), arg2
}

function approve(address arg1, address arg2, bytes32 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not the owner of the address'
    sub_8ff4b029[address(arg1)][address(arg2)] = arg4
    emit 0x8bdc1f3f: address(arg1), arg2
}

function permit(address arg1, address arg2, bytes32 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if arg4 < block.timestamp:
        revert with 0, 'Permit: EXPIRED'
    if nonces[address(arg1)] == -1:
        revert with 'NH{q', 17
    nonces[address(arg1)]++
    signer = erecover(sha3(0, stor0, sha3(0xd29eae1810f9a3f065590ccfa473d6fdb29545b7a5e09c439cc6b0552ad6ed86, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(signer):
        revert with 0, 'not the owner of the address'
    if not address(signer):
        revert with 0, 'not the owner of the address'
    sub_8ff4b029[address(arg1)][address(arg2)] = arg4
    emit 0x8bdc1f3f: address(arg1), arg2
}



}
