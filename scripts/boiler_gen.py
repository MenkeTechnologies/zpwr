#!/usr/bin/env python3
import os
import sys


class CodeFile:
    def __init__(self, filename, dir, contents):
        self.filename = filename
        self.dir = dir
        self.contents = contents


def spring_routine(package, name):
    dir = "src/main/java/" + package.replace(".", "/")
    check_dir_exists(dir)

    spring_files = []
    modelFile = f'{name}.java'
    model = f'''package {package}.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class {name} {{
    @Id
    private long id;

}}
'''
    spring_files.append(CodeFile(modelFile, f"{dir}/domain", model))
    repoFile = f'{name}Repository.java'
    repo = f'''package {package}.repository;

import {package}.domain.{name};
import org.springframework.data.jpa.repository.JpaRepository;

public interface {name}Repository extends JpaRepository<{name}, Long> {{
    
}}
'''
    spring_files.append(CodeFile(repoFile, f"{dir}/repository", repo))
    resourceFile = f'{name}Controller.java'
    resource = f'''package {package}.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import {package}.domain.{name};

import {package}.repository.{name}Repository;
@Controller
@RequestMapping("/")
public class {name}Controller {{

    @Autowired
    {name}Repository {name.lower()}Repository;

}}
'''
    spring_files.append(CodeFile(resourceFile, f"{dir}/controller", resource))
    for file in spring_files:
        if not os.path.exists(file.dir):
            os.mkdir(file.dir)

        if os.path.exists(f"{file.dir}/{file.filename}"):
            sys.stderr.write(f"file {file.filename} already exists...\n")
            return
        with open(f"{file.dir}/{file.filename}", "w") as f:
            f.write(file.contents)


def react_routine(name):
    dir = "src/components"
    check_dir_exists(dir)

    modelFile = f'{name}.js'
    model = f"""import React from 'react';
export default class {name} extends React.Component {{
    render() {{
        return (
            <div>

            </div>
        );
    }}
}}
"""
    file = CodeFile(modelFile, dir, model)

    if not os.path.exists(file.dir):
        os.mkdir(file.dir)

    if os.path.exists(f"{file.dir}/{file.filename}"):
        sys.stderr.write(f"file {file.filename} already exists...\n")
        return
    with open(f"{file.dir}/{file.filename}", "w") as f:
        f.write(file.contents)


def check_dir_exists(dir):
    if not os.path.exists(dir):
        print(f"\n_____________{dir} must exist_____________\n")
        print(f"create {dir}?")
        ans = input()
        if ans == "y":
            os.makedirs(dir)
        else:
            exit(1)


if len(sys.argv) < 2:
    sys.stderr.write("what is the framework?\n")
    exit(2)

user_framework = sys.argv[1]


def min_args_check(min_args):
    if len(sys.argv) < min_args:
        sys.stderr.write(f"need {min_args-1} args at least\n")
        exit(2)


def gen_files_react(start):
    for arg in range(start, len(sys.argv)):
        name = f"{sys.argv[arg]}".capitalize()
        react_routine(name)


def gen_files_spring(start):
    package = sys.argv[2]
    for arg in range(start, len(sys.argv)):
        name = f"{sys.argv[arg]}".capitalize()
        spring_routine(package, name)


frameworks = [
    {"spring": ["spring", "s", "spr", "sp"]},
    {"react": ["react", "r", "re", "rea"]}
]

def get_frame_work(user_framework):
    for frame in frameworks:
        for key,value in frame.items():
            for abbrev in value:
                if user_framework == abbrev:
                    return key


valid_framework = get_frame_work(user_framework)

if valid_framework == "spring":
    min_args = 4
    min_args_check(min_args)
    gen_files_spring(min_args - 1)
elif valid_framework == "react":
    min_args = 3
    min_args_check(min_args)
    gen_files_react(min_args - 1)
else:
    sys.stderr.write(f"supported frameworks are {frameworks}")
