contract main {




// =====================  Runtime code  =====================


#
#  - sub_00be5dd4(?)
#  - sub_a5dcd07b(?)
#
const versionPaymaster = 32, 33, 0xfe322e322e332b6f70656e67736e2e746573742d7065612e697061796d61737465, mem[161 len 31] / 0.00390625, 0

const getGasAndDataLimits = 150000, 100000, 110000, 10500

const CALLDATA_SIZE_LIMIT = 10500

const FORWARDER_HUB_OVERHEAD = 50000

const POST_RELAYED_CALL_GAS_LIMIT = 110000

const PAYMASTER_ACCEPTANCE_BUDGET = 150000

const PRE_RELAYED_CALL_GAS_LIMIT = 100000


address owner;
address hubAddr;
address trustedForwarderAddress;

function getHubAddr() {
    return hubAddr
}

function trustedForwarder() {
    return trustedForwarderAddress
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRelayHub(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hubAddr = arg1
}

function setTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    trustedForwarderAddress = arg1
}

function getRelayHubDeposit() {
    require ext_code.size(hubAddr)
    staticcall hubAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit() payable {
    if not hubAddr:
        revert with 0, 'relay hub address not set'
    require ext_code.size(hubAddr)
    call hubAddr.depositFor(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args this.address
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

function sub_76fa01c3(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == bool(arg2)
    require arg4 <= test266151307()
    require calldata.size + -arg4 - 4 >= 256
    emit SampleRecipientPostCall(bool(arg2), arg3);
}

function withdrawRelayHubDepositTo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(hubAddr)
    call hubAddr.withdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(hubAddr)
    staticcall hubAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(hubAddr)
    call hubAddr.withdraw(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if not hubAddr:
            revert with 0, 'relay hub address not set'
        require ext_code.size(hubAddr)
        call hubAddr.depositFor(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x921276ea(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xd0e30db0(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd0e30db0(?????) == uint32(call.func_hash) >> 224:
                if not hubAddr:
                    revert with 0, 'relay hub address not set'
                require ext_code.size(hubAddr)
                call hubAddr.depositFor(address arg1) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xda742228(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    trustedForwarderAddress = address(cd[4])
                else:
                    if unknown_0xdf463a66(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 150000
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                    else:
                        if unknown_0xf9c002f7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 100000
                        require unknown_0xfa09e630(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require ext_code.size(hubAddr)
                        staticcall hubAddr.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(hubAddr)
                        call hubAddr.withdraw(uint256 arg1, address arg2) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x921276ea(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 32, 33, 0xfe322e322e332b6f70656e67736e2e746573742d7065612e697061796d61737465, mem[193 len 31] / 0.00390625, 0
            if uint32(call.func_hash) >> 224 != unknown_0xa5dcd07b(?????):
                if unknown_0xb039a88f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 150000, 100000, 110000, 10500
                if unknown_0xb90b41cf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 50000
                require unknown_0xbbdaa3c9(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 110000
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] <= test266151307()
            require calldata.size + -cd[4] - 4 >= 64
            require ('cd', 4)[0] < calldata.size + -cd[4] - 259
            require cd[(('cd', 4)[0] + cd[4] + 164)] == address(cd[(('cd', 4)[0] + cd[4] + 164)])
            if address(cd[(('cd', 4)[0] + cd[4] + 164)]) != trustedForwarderAddress:
                revert with 0, 'Forwarder is not trusted'
            require ('cd', 4).length < calldata.size + -cd[4] - 227
            require cd[(('cd', 4).length + cd[4] + 36)] == address(cd[(('cd', 4).length + cd[4] + 36)])
            require ('cd', 4)[0] < calldata.size + -cd[4] - 259
            require cd[(('cd', 4)[0] + cd[4] + 164)] == address(cd[(('cd', 4)[0] + cd[4] + 164)])
            mem[196 len 64] = isTrustedForwarder(address arg1), address(cd[(('cd', 4)[0] + cd[4] + 164)]) << 64, 0, mem[196 len 28]
            staticcall address(cd[(('cd', 4).length + cd[4] + 36)]).mem[196 len 4] with:
                    gas gas_remaining wei
                   args mem[200]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'isTrustedForwarder: reverted'
                require mem[96] != 32
                revert with 0, 'isTrustedForwarder: bad response'
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'isTrustedForwarder: reverted'
            if return_data.size != 32:
                revert with 0, 'isTrustedForwarder: bad response'
            require return_data.size >= 32
            require mem[228 len 4], 0 == bool(mem[228 len 4], 0)
            if not mem[228 len 4], 0:
                revert with 0, 'invalid forwarder for recipient'
    if unknown_0x74e861d6(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x74e861d6(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return hubAddr
        if uint32(call.func_hash) >> 224 != unknown_0x76fa01c3(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x7bb05264(?????):
                if unknown_0x7da0a877(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return trustedForwarderAddress
                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return owner
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            hubAddr = address(cd[4])
        else:
            require not msg.value
            require calldata.size - 4 >= 128
            require cd[4] <= test266151307()
            require cd[4] + 35 < calldata.size
            require ('cd', 4).length <= test266151307()
            require cd[4] + ('cd', 4).length + 36 <= calldata.size
            require cd[36] == bool(cd[36])
            require cd[100] <= test266151307()
            require calldata.size + -cd[100] - 4 >= 256
            emit SampleRecipientPostCall(bool(cd[36]), cd[68]);
    if uint32(call.func_hash) >> 224 != unknown_0x00be5dd4(?????):
        if unknown_0x2afe31c1(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require ext_code.size(hubAddr)
            staticcall hubAddr.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if uint32(call.func_hash) >> 224 != unknown_0x2d14c4b7(?????):
            if unknown_0x5c5e3db1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 10500
            require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            owner = 0
            emit OwnershipTransferred(owner, 0);
        else:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[36] == address(cd[36])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(hubAddr)
            call hubAddr.withdraw(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args cd[4], address(cd[36])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require not msg.value
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require ('cd', 4)[0] < calldata.size + -cd[4] - 259
    require cd[(('cd', 4)[0] + cd[4] + 164)] == address(cd[(('cd', 4)[0] + cd[4] + 164)])
    if address(cd[(('cd', 4)[0] + cd[4] + 164)]) != trustedForwarderAddress:
        revert with 0, 'Forwarder is not trusted'
    require ('cd', 4).length < calldata.size + -cd[4] - 227
    require cd[(('cd', 4).length + cd[4] + 36)] == address(cd[(('cd', 4).length + cd[4] + 36)])
    require ('cd', 4)[0] < calldata.size + -cd[4] - 259
    require cd[(('cd', 4)[0] + cd[4] + 164)] == address(cd[(('cd', 4)[0] + cd[4] + 164)])
    mem[196 len 64] = isTrustedForwarder(address arg1), address(cd[(('cd', 4)[0] + cd[4] + 164)]) << 64, 0, mem[196 len 28]
    staticcall address(cd[(('cd', 4).length + cd[4] + 36)]).mem[196 len 4] with:
            gas gas_remaining wei
           args mem[200]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'isTrustedForwarder: reverted'
        require mem[96] != 32
        revert with 0, 'isTrustedForwarder: bad response'
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'isTrustedForwarder: reverted'
    if return_data.size != 32:
        revert with 0, 'isTrustedForwarder: bad response'
    require return_data.size >= 32
    require mem[228 len 4], 0 == bool(mem[228 len 4], 0)
    if not mem[228 len 4], 0:
        revert with 0, 'invalid forwarder for recipient'
    emit SampleRecipientPreCall()
    return 64, 0, 14, 'no revert here', 0
}



}
