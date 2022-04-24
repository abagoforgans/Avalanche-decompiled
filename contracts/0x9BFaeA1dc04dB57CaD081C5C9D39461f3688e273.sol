contract main {




// =====================  Runtime code  =====================


address stor0;
address masterAddress;
address listAddress;
mapping of address connectors;
mapping of address check;
mapping of address account;
uint256 versionCount;

function list() {
    return listAddress
}

function connectors(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return connectors[arg1]
}

function account(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(account[arg1])
}

function check(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return check[arg1]
}

function versionCount() {
    return versionCount
}

function master() {
    return masterAddress
}

function _fallback() payable {
    revert
}

function updateMaster() {
    if not stor0:
        revert with 0, 'not-valid-address'
    if stor0 != msg.sender:
        revert with 0, 'not-master'
    masterAddress = stor0
    stor0 = 0
    emit LogUpdateMaster(masterAddress);
}

function changeCheck(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if masterAddress != msg.sender:
        revert with 0, 'not-master'
    if arg2 == check[arg1]:
        revert with 0, 'already-a-check'
    check[arg1] = arg2
    emit LogNewCheck(arg1, arg2);
}

function isClone(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool('6==7===6=s', address(account[arg1]), 23284 == ext_code.copy(arg2, 0 len 45) and Mask(136, 0, account[arg1]), 0x5af43d82803e903d91602b57fd5bf3 == Mask(256, -104, ext_code.copy(arg2, 0 len 45)) << 104)
}

function changeMaster(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if masterAddress != msg.sender:
        revert with 0, 'not-master'
    if arg1 == masterAddress:
        revert with 0, 'already-a-master'
    if not arg1:
        revert with 0, 'not-valid-address'
    if stor0 == arg1:
        revert with 0, 'already-a-new-master'
    stor0 = arg1
    emit LogNewMaster(arg1);
}

function setBasics(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if masterAddress:
        revert with 0, 'already-defined'
    if listAddress:
        revert with 0, 'already-defined'
    if address(account[1]):
        revert with 0, 'already-defined'
    if connectors[1]:
        revert with 0, 'already-defined'
    if versionCount:
        revert with 0, 'already-defined'
    masterAddress = arg1
    listAddress = arg2
    versionCount++
    address(account[stor6]) = arg3
    connectors[stor6] = arg4
}

function addNewAccount(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if masterAddress != msg.sender:
        revert with 0, 'not-master'
    if not arg1:
        revert with 0, 'not-valid-address'
    versionCount++
    require ext_code.size(arg1)
    staticcall arg1.version() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != versionCount:
        revert with 0, 'not-valid-version'
    address(account[stor6]) = arg1
    if arg2:
        connectors[stor6] = arg2
    if arg3:
        check[stor6] = arg3
    emit LogNewAccount(arg1, arg2, arg3);
}

function build(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg2:
        revert with 0, 'not-valid-account'
    if arg2 > versionCount:
        revert with 0, 'not-valid-account'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, address(account[arg2]), 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(listAddress)
    call listAddress.init(address rg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).enable(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogAccountCreated(msg.sender, arg1, address(create.new_address), arg3);
    return address(create.new_address)
}

function sub_4f5b2561(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if not cd[36]:
        revert with 0, 'not-valid-account'
    if cd[36] > versionCount:
        revert with 0, 'not-valid-account'
    mem[0] = cd[36]
    mem[32] = 5
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, address(account[cd[36]]), 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(listAddress)
    call listAddress.init(address rg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).enable(address rg1) with:
         gas gas_remaining wei
        args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogAccountCreated(msg.sender, address(cd[4]), address(create.new_address), address(cd[132]));
    if ('cd', 68).length > 0:
        mem[96] = 0xe0e90acf00000000000000000000000000000000000000000000000000000000
        mem[100] = 96
        mem[196] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = 228
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[132] = (32 * ('cd', 68).length) + 128
        mem[(32 * ('cd', 68).length) + 228] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 260
        u = (32 * ('cd', 68).length) + 260
        while idx < ('cd', 100).length:
            mem[u] = t + -(32 * ('cd', 68).length) - 260
            require cd[s] < calldata.size + -cd[100] - 67
            require cd[(cd[s] + cd[100] + 36)] <= test266151307()
            require cd[100] + 36 <= calldata.size - cd[(cd[s] + cd[100] + 36)]
            mem[t] = cd[(cd[s] + cd[100] + 36)]
            mem[t + 32 len cd[(cd[s] + cd[100] + 36)]] = call.data[cd[s] + cd[100] + 68 len cd[(cd[s] + cd[100] + 36)]]
            mem[t + cd[(cd[s] + cd[100] + 36)] + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[s] + cd[100] + 36)]) + 32
            u = u + 32
            continue 
        mem[164] = address(cd[132])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).cast(address[] rg1, bytes[] rg2, address rg3) with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=('cd', 68).length, data=mem[228 len (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + 32]), (32 * ('cd', 68).length) + 128, address(cd[132])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _34 = mem[96 len 4], 0
        require mem[96 len 4], 0 <= test266151307()
        require mem[96 len 4], 0 + 127 < return_data.size + 96
        _35 = mem[mem[96 len 4], 0 + 96]
        require mem[mem[96 len 4], 0 + 96] <= test266151307()
        require ceil32(return_data.size) + (32 * mem[mem[96 len 4], 0 + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], 0 + 96]) + 32 >= 0
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], 0 + 96]) + 128
        mem[ceil32(return_data.size) + 96] = _35
        require _34 + (32 * _35) + 32 <= return_data.size
        idx = 0
        s = _34 + 128
        t = ceil32(return_data.size) + 128
        while idx < _35:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    return address(create.new_address)
}



}
